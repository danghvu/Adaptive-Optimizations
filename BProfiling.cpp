//===- DCE.cpp - Code to perform dead code elimination --------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the Aggressive Dead Code Elimination pass.  This pass
// optimistically assumes that all instructions are dead until proven otherwise,
// allowing it to eliminate dead computations that other DCE passes do not
// catch, particularly involving loop computations.
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "brooks8"
#include "llvm/Transforms/Scalar.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/SmallPtrSet.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Pass.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/InstIterator.h"
#include <stdio.h>
#include <queue>
#include <string>
#include <functional>

using namespace llvm;

STATISTIC(NumProfileBlocks , "Number of profiling basic blocks");

namespace {
  typedef std::pair<const BasicBlock*, const BasicBlock*> ConstEdge;
  typedef std::pair<BasicBlock*, BasicBlock*> Edge;
  typedef std::pair<Edge, float>              EdgeWeight;
  typedef SetVector<Edge>                     EdgeSet;
  typedef SetVector<BasicBlock*>              BlockSet;
  typedef DenseMap<Edge, float>               EdgeWeightMap;
  typedef DenseMap<BasicBlock*, float>        BlockWeightMap;
  typedef DenseMap<BasicBlock*, BlockSet>     BlockMap;

  // Specific to keeping track of edge/block counts
  typedef DenseMap<Edge, unsigned>            EdgeCountSet;
  typedef DenseMap<BasicBlock*, unsigned>     BlockCountSet;
  // ----------------------------------------------

  class BProfiling : public FunctionPass {
  public:
    static char ID;
    BProfiling () : FunctionPass(ID) {
      initializeBProfilingPass(*PassRegistry::getPassRegistry());
    }
    BProfiling(ExecutionEngine* J) : FunctionPass(ID) {
      initializeBProfilingPass(*PassRegistry::getPassRegistry());
      this->TheJIT = J;
    }

    void* CallbackFunction(BasicBlock* B);

  private:
    Function* F;
    LoopInfo* LI;
    BasicBlock* ExitBB;

    int LoopMultiplier; // Assumption on number of iterations for each loop

    BlockWeightMap BlockWeights;  // Map holding weight values of each basic block
    EdgeWeightMap  EdgeWeights;   // Map holding weight values of each edge
    EdgeSet*       MaxSpanningTree; // Edges in the maximum spanning tree
    EdgeSet*       ProfileEdges;
    BlockSet*      ProfileBlocks;

    // Specific to keeping track of edge/block counts
    EdgeCountSet*      EdgeCounts;
    BlockCountSet*     BlockCounts;
    ExecutionEngine*   TheJIT;

    struct EdgeWeightCompare {
      bool operator()(const EdgeWeight& l, EdgeWeight& r) const {
        return l.second < r.second;
      }
    };

    std::priority_queue<EdgeWeight, std::vector<EdgeWeight>, EdgeWeightCompare> EdgePQ;

    virtual bool runOnFunction(Function& F);

    virtual void getAnalysisUsage(AnalysisUsage& AU) const {
      AU.addRequired<UnifyFunctionExitNodes>();
      AU.addRequired<LoopInfo>();
    }

    void getWeights();
    void constructMaxSpanTree();
    bool insertInstructions();
    void removeInstructions();
    void removeProfiling(BasicBlock* B);
    void initializeEdgeCounts();
    void updateBlockCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh);
    void updateCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh);
    void updateEdgeCountsDFS(BasicBlock* B, Edge E);

    bool ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem);

    void printAllWeights();
    void printMaxSpanTree();
    void printInsertionEdges();
    void printEdge(Edge E);
    void printEdge(Edge E, float F);
    void printEdge(Edge E, unsigned U);
    void printEdgeCounts();
    void printBlockCounts();
  };
}

char BProfiling::ID = 0;
INITIALIZE_PASS(BProfiling, "bprofiling", "Brooks8 - Profiling", false, false)
FunctionPass *llvm::createBProfilingPass() { return new BProfiling(); }
FunctionPass *llvm::createBProfilingPass(ExecutionEngine* J) { return new BProfiling(J); }

typedef void* (BProfiling::*FunctionPtr)(BasicBlock*);

bool BProfiling::runOnFunction(Function& F) {
  this->F  = &F;
  this->LI = &getAnalysis<LoopInfo>();
  this->ExitBB = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();
  this->LoopMultiplier = 10;

  MaxSpanningTree  = new EdgeSet();
  ProfileEdges     = new EdgeSet();
  ProfileBlocks    = new BlockSet();
  EdgeCounts       = new EdgeCountSet();
  BlockCounts      = new BlockCountSet();

  if (this->F->size() == 1) {
    fprintf(stderr, "*** Function only has one basic block - no profiling code needed ***\n");
    return false;
  }

  fprintf(stderr, "*** Function before pass ***\n");
  this->F->dump();
  fprintf(stderr, "Exit Basic Block: %s\n", this->ExitBB->getName().str().c_str());

  getWeights();
  printAllWeights();

  constructMaxSpanTree();
  printMaxSpanTree();
  printInsertionEdges();
  bool result = insertInstructions();

  initializeEdgeCounts();

  fprintf(stderr, "*** Function after pass ***\n");
  this->F->dump();


  return result;
}

void* BProfiling::CallbackFunction(BasicBlock* B) {
  // A profiling block is guaranteed to only have one predecessor and one successor
  printf("In BProfiling callback function! [%s]\n", B->getName().str().c_str());
  Edge E;
  if (B->getName().str().find("ProfileBB") != std::string::npos)
    E = std::make_pair(*pred_begin(B), *succ_begin(B));
  else {
    // If the basic block name does not contain ProfileBB, it is either at the end of
    // a basic block with a single successor or at the beginning of a block (with a single
    // predecessor)
    IntToPtrInst* I = dyn_cast<IntToPtrInst>(&B->getInstList().front());
    if (I != NULL) {
      ConstantInt* CI = dyn_cast<ConstantInt>(I->getOperand(0));
      if (CI != NULL && CI->getValue() == (intptr_t)B) {
        E = std::make_pair(*pred_begin(B), B);
      }
      else {
        E = std::make_pair(B, *succ_begin(B));
      }
    }
    else {
      E = std::make_pair(B, *succ_begin(B));
    }
  }
  unsigned threshold = (TheJIT->getProfileInfo())->TH_ENABLE_APPLY_OPT;
  (*EdgeCounts)[E] += 1;
  fprintf(stderr, "Threshold: %u | Edge count: ", threshold);
  printEdge(E, (*EdgeCounts)[E]);

  if ((*EdgeCounts)[E] >= threshold) {
    // Update counts and keep track of basic blocks above threshold
    SmallPtrSet<BasicBlock*, 8> HotBlocks;
    updateCounts(HotBlocks, threshold);

    fprintf(stderr, "An edge is now higher than the threshold! Removing profiling...\n");
    // Remove profiling instructions
    removeInstructions();
//    F->dump();

    // Setup pass manager for the function and the hot blocks and run the passes
    FunctionPassManager* FPM = new FunctionPassManager(F->getParent());

    fprintf(stderr, "Before SCCP:\n");
    F->dump();
    FPM->add(createDynamicInlinerPass());
    FPM->doInitialization();
    FPM->run(*F);
    FPM->doFinalization();
    delete FPM;

    TheJIT->recompileAndRelinkFunction(F);
    // Rerun profiling pass (and return it)
    fprintf(stderr, "After SCCP:\n");
    F->dump();
  }

  // If no optimizations were run, the profiling pass does not change
  return this;
}

void BProfiling::initializeEdgeCounts() {
  EdgeCounts->clear();

  // Set all edges to have 0 frequency
  for (EdgeSet::iterator ESI = MaxSpanningTree->begin(), ESE = MaxSpanningTree->end(); ESI != ESE; ++ESI) {
    (*EdgeCounts)[*ESI] = 0;
  }
  for (EdgeSet::iterator ESI = ProfileEdges->begin(), ESE = ProfileEdges->end(); ESI != ESE; ++ESI) {
    (*EdgeCounts)[*ESI] = 0;
  }
/*
  fprintf(stderr, "*** Edge Count set: ***\n");
  for (EdgeCountSet::iterator ECI = EdgeCounts->begin(), ECE = EdgeCounts->end(); ECI != ECE; ++ECI) {
    Edge Temp = ECI->first;
    printEdge(Temp);
  }*/
}

void* MyCallbackFunction(BProfiling* BP, BasicBlock* B) {
  printf("In callback function!\n");
  return BP->CallbackFunction(B);
}

void BProfiling::updateCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh) {
  Edge E = std::make_pair((BasicBlock*)NULL, (BasicBlock*)NULL);
  // Clear the counts of the edges which don't have counters
  for (EdgeSet::iterator ESI = MaxSpanningTree->begin(), ESE = MaxSpanningTree->end(); ESI != ESE; ++ESI) {
    //printEdge(*ESI);
    (*EdgeCounts)[*ESI] = 0;
  }

  // Clear the counts of all basic blocks
  for (BlockCountSet::iterator BSI = BlockCounts->begin(), BSE = BlockCounts->end(); BSI != BSE; ++BSI) {
    BSI->second = 0;
  }

  // Update everything
  updateEdgeCountsDFS(&F->getEntryBlock(), E);
  updateBlockCounts(HotBlocks, thresh);
  // Print the results
  fprintf(stderr,"\n\n");
  printEdgeCounts();
  printBlockCounts();
}

void BProfiling::updateEdgeCountsDFS(BasicBlock* B, Edge E) {
  Edge E1;
  /*
  fprintf(stderr, "DFS: %s, ", B->getName().str().c_str());
  if (E.first == NULL)
    fprintf(stderr, "NULL\n");
  else
    printEdge(E);

  fprintf(stderr, "\tIn: { ");
  for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
    if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
      fprintf(stderr, "%s ", (*pred_begin(*PI))->getName().str().c_str());
    else
      fprintf(stderr, "%s ", (*PI)->getName().str().c_str());
  }
  fprintf(stderr, "}\n\tOut: { ");
  for (succ_iterator SI = succ_begin(B), SE = succ_end(B); SI != SE; ++SI) {
    if ((*SI)->getName().str().find("ProfileBB") != std::string::npos)
      fprintf(stderr, "%s ", (*succ_begin(*SI))->getName().str().c_str());
    else
      fprintf(stderr, "%s ", (*SI)->getName().str().c_str());
  }
  fprintf(stderr, "}\n");
*/
  // Calculate the in dependencies
  unsigned in = 0;

  // If B is the entry block, we have to do the exit->entry edge as well
  if (B == &F->getEntryBlock()) {
    E1 = std::make_pair(ExitBB, B);
    if ((E1.first != E.first || E1.second != E.second) && MaxSpanningTree->count(E1) != 0) {
      updateEdgeCountsDFS(E1.first, E1);
    }
  }

  for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
    if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
      E1 = std::make_pair(*pred_begin(*PI), B);
    else
      E1 = std::make_pair(*PI, B);
    if ((E1.first != E.first || E1.second != E.second) && MaxSpanningTree->count(E1) != 0) {
      updateEdgeCountsDFS(E1.first, E1);
    }
    in += (*EdgeCounts)[E1];
  }

  // Calculate the out dependencies
  unsigned out = 0;
  for (succ_iterator SI = succ_begin(B), SE = succ_end(B); SI != SE; ++SI) {
    if ((*SI)->getName().str().find("ProfileBB") != std::string::npos)
      E1 = std::make_pair(B, *succ_begin(*SI));
    else
      E1 = std::make_pair(B, *SI);

    if ((E1.first != E.first || E1.second != E.second) && MaxSpanningTree->count(E1) != 0) {
      updateEdgeCountsDFS(E1.second, E1);
    }
    out += (*EdgeCounts)[E1];
  }

  if (E.first != NULL) {
    (*EdgeCounts)[E] = abs(in - out);
  }
}

void BProfiling::updateBlockCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh) {
  for (df_iterator<BasicBlock*> I = df_begin(&F->getEntryBlock()), E = df_end(&F->getEntryBlock()); I != E; ++I) {
    BasicBlock* B = *I;
    if (B == &F->getEntryBlock())
      (*BlockCounts)[B] = (*EdgeCounts)[std::make_pair(ExitBB, B)];
    else
      (*BlockCounts)[B] = 0;

    for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
      Edge E1;
      if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
        E1 = std::make_pair(*pred_begin(B), B);
      else
        E1 = std::make_pair(*PI, B);
      (*BlockCounts)[B] += (*EdgeCounts)[E1];
      if ((*BlockCounts)[B] >= thresh) {
        HotBlocks.insert(B);
      }
    }
  }
}

void BProfiling::removeProfiling(BasicBlock* B) {
  // If the block was inserted for specifically profiling (A -> B -> C), change
  // such that A -> C and remove B from function
  if (B->getName().str().find("ProfileBB") != std::string::npos) {
    fprintf(stderr, "BasicBlock [%s] was added by us\n", B->getName().str().c_str());
    BasicBlock* Succ = *succ_begin(B);
    TerminatorInst* TermA = (*pred_begin(B))->getTerminator();
    unsigned numSuccA = TermA->getNumSuccessors();
    for (unsigned i = 0; i < numSuccA; ++i) {
      if (TermA->getSuccessor(i) == B)
        TermA->setSuccessor(i, Succ);
    }
    B->eraseFromParent();
  }
  // Otherwise the instructions are either the first two, or the last two (before the terminator inst);
  else {
    fprintf(stderr, "Existing BasicBlock [%s] has profiling instructions\n", B->getName().str().c_str());
    IntToPtrInst* I = dyn_cast<IntToPtrInst>(&B->getInstList().front());

    // If the first instruction is an inttoptr
    if (I != NULL) {
      ConstantInt* CI = dyn_cast<ConstantInt>(I->getOperand(0));
      // And the inttoptr is specifically for the address of B, remove the first two instructions
      if (CI != NULL && CI->getValue() == (intptr_t)B) {
        fprintf(stderr, "\tIn the beginning!\n");
        B->getInstList().front().eraseFromParent();
        B->getInstList().front().eraseFromParent();
      }
      // Otherwise remove the two instructions before the terminator
      else {
        fprintf(stderr, "\tIn the end!\n");
        BasicBlock::iterator ILT = B->getInstList().end();
        ILT--; ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
        ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
//        Instruction* TermInst = &B->getInstList().back();
//        B->getInstList().pop_back();
        //TermInst->dump();
//        B->getInstList().back().eraseFromParent();
//        B->getInstList().back().eraseFromParent();
//        B->getInstList().push_back(TermInst);
      }
    }
    // Otherwise remove the two instructions before the terminator
    else {
        fprintf(stderr, "\tIn the end!\n");
        BasicBlock::iterator ILT = B->getInstList().end();
        ILT--; ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
        ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
//        Instruction* TermInst = &B->getInstList().back();
//        B->getInstList().pop_back();
        //TermInst->dump();
//        B->getInstList().back().eraseFromParent();
//        B->getInstList().back().eraseFromParent();
//        B->getInstList().push_back(TermInst);
    }
    B->dump();
  }
}

void BProfiling::removeInstructions() {
  for (BlockSet::iterator BSI = ProfileBlocks->begin(), BSE = ProfileBlocks->end(); BSI != BSE; ++BSI) {
    fprintf(stderr, "Removing profiling from BB : %s\n", (*BSI)->getName().str().c_str());
    removeProfiling(*BSI);
  }
  // Remove the two inttoptrs for the pass and the function
  F->getEntryBlock().getInstList().front().eraseFromParent();
  F->getEntryBlock().getInstList().front().eraseFromParent();
}

bool BProfiling::insertInstructions() {
  // Insert allocation for profiling variables
  bool insertedInsts = false;

  // Create a pointer type of size sizeof(void*)
  PointerType* VoidPointerTy = PointerType::get(IntegerType::get(F->getContext(), CHAR_BIT), 0);

  //  Create a vector of the argument types
  std::vector<Type*> FunctionArgsTy;
  FunctionArgsTy.push_back(VoidPointerTy);
  FunctionArgsTy.push_back(VoidPointerTy);

  // Create the function type: PointerTy func(PointerTy)
  FunctionType* FunctionTy = FunctionType::get(VoidPointerTy, FunctionArgsTy, false);

  // Create the function-pointer type
  PointerType* FunctionPtrTy = PointerType::get(FunctionTy, 0);

  // Insert the inttoptr instructions for the function callback and this function pass
  // (both never change)
  intptr_t FP      = reinterpret_cast<intptr_t>(MyCallbackFunction);
  intptr_t ThisObj = reinterpret_cast<intptr_t>(this);

  Value* fnptr = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, FP));
  Value* bpptr = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, ThisObj));

  IntToPtrInst* FuncAddrToPtrInst = new IntToPtrInst(fnptr, FunctionPtrTy);
  IntToPtrInst* BPAddrToPtrInst = new IntToPtrInst(bpptr, VoidPointerTy);

  F->getEntryBlock().getInstList().push_front(BPAddrToPtrInst);
  F->getEntryBlock().getInstList().push_front(FuncAddrToPtrInst);

  int i = 0;
  for (EdgeSet::iterator I = ProfileEdges->begin(), E = ProfileEdges->end(); I != E; ++I) {
    insertedInsts = true;
    ++NumProfileBlocks;
    // Create a new BasicBlock
    BasicBlock* E1 = I->first;
    BasicBlock* E2 = I->second;
    BasicBlock* B;

    Instruction* LastInst = &E1->getInstList().back();

    if (TerminatorInst* TI = dyn_cast<TerminatorInst>(LastInst)) {
      // If E2 is the only successor of E1, we are going to put all of the profiling
      // instructions at the end of E1.
      if (TI->getNumSuccessors() == 1)
        B = E1;
      // Otherwise if E1 is the only predecessor of E2, then we are going to put all of
      // the profiling instructions at the beginning of E2
      else if (E2->getSinglePredecessor())
        B = E2;
      // Otherwise we need to create a new basic block for the profiling instructions
      else {
        char str[20];
        sprintf(str, "ProfileBB%d", i);
        B = BasicBlock::Create(F->getContext(), Twine(str), F, E2);

        // Replace any phi nodes that use E1 in E2 since B will be the new predecessor of E2
        for (BasicBlock::iterator II = E2->begin(), IE = E2->end(); II != IE; ++II) {
          PHINode* PN = dyn_cast<PHINode>(II);
          if (!PN)
            break;
          int i;
          while ((i = PN->getBasicBlockIndex(E1)) >= 0)
            PN->setIncomingBlock(i, B);
        }

        int numSuccessors = TI->getNumSuccessors();
        for (int j = 0; j < numSuccessors; ++j) {
          if (E2 == TI->getSuccessor(j))
            TI->setSuccessor(j, B);
        }
        ++i;
      }
    }
    else
      assert(0 && "Not well-formed basic block!\n");

    intptr_t BBAddr = reinterpret_cast<intptr_t>(B);
    Value* bbptr = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, BBAddr));

    // Perform inttoptr on the basic block
    IntToPtrInst* BBAddrToPtrInst = new IntToPtrInst(bbptr, VoidPointerTy);

    // Make the function call
    std::vector<Value*> ArrayRefVec;
    ArrayRefVec.push_back(BPAddrToPtrInst);
    ArrayRefVec.push_back(BBAddrToPtrInst);
    CallInst* FuncCallInst = CallInst::Create(FuncAddrToPtrInst, ArrayRef<Value*>(ArrayRefVec));

    // Insert the instructions
    if (B == E1) {
      // Remove the old branch and push all of the instructions just created onto E1
      // (the old and new branch are exactly the same, btw)
      B->getInstList().pop_back();
      B->getInstList().push_back(BBAddrToPtrInst);
      B->getInstList().push_back(FuncCallInst);
      B->getInstList().push_back(BranchInst::Create(E2));
    }
    else if (B == E2) {
      // Push everything to the front of E2 (everything has to be pushed in reverse)
      B->getInstList().push_front(FuncCallInst);
      B->getInstList().push_front(BBAddrToPtrInst);
    }
    else {
      // Otherwise the instructions go into the new basic block and we need to move E1 and
      // E2 into the correct locations
      B->moveAfter(E1);
      B->getInstList().push_back(BBAddrToPtrInst);
      B->getInstList().push_back(FuncCallInst);
      B->getInstList().push_back(BranchInst::Create(E2));
      E2->moveAfter(B);
    }
    ProfileBlocks->insert(B);
  }

  // If we inserted no profiling code, remove the inttoptr instructions in the entry block
  if (!insertedInsts) {
    F->getEntryBlock().getInstList().pop_front();
    F->getEntryBlock().getInstList().pop_front();
  }

  return insertedInsts;
}

bool BProfiling::ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem) {
  for (SmallVectorImpl<ConstEdge>::iterator I = vec.begin(), E = vec.end(); I != E; ++I) {
    if (I->first == elem.first && I->second == elem.second)
      return true;
  }
  return false;
}

void BProfiling::constructMaxSpanTree() {
  Edge E;
  EdgeWeight EW;

  SmallPtrSet<BasicBlock*, 32> TreeNodes;
  // Insert the Exit->Entry edge first so it never has
  // profiling code, since the edge doesn't actually exist
  E = std::make_pair(ExitBB, &F->getEntryBlock());
  TreeNodes.insert(E.first);
  TreeNodes.insert(E.second);
  MaxSpanningTree->insert(E);
  SmallVector<EdgeWeight, 16> Backup;

  // This does not include unreachable basic blocks
  unsigned numBB = BlockWeights.size();
  while (TreeNodes.size() != numBB) {
    while (true) {
      EW = EdgePQ.top();
      E  = EW.first;
      EdgePQ.pop();
      unsigned c1 = TreeNodes.count(E.first);
      unsigned c2 = TreeNodes.count(E.second);
      // c1 == 1, c2 == 0
      if (c1 > c2) {
        TreeNodes.insert(E.second);
        MaxSpanningTree->insert(E);
        break;
      }
      // c1 == 0, c2 == 1
      else if (c1 < c2) {
        TreeNodes.insert(E.first);
        MaxSpanningTree->insert(E);
        break;
      }
      // c1 == c2 == 0
      else if (c1 == 0) {
        Backup.push_back(EW);
      }
      // Otherwise both basic blocks are already nodes in the tree
      // meaning the edge will never be added
    }
    while (Backup.size() != 0)
      EdgePQ.push(Backup.pop_back_val());
  }

  for (EdgeWeightMap::iterator IE = EdgeWeights.begin(), EE = EdgeWeights.end(); IE != EE; ++IE) {
    E = (*IE).first;
    if (MaxSpanningTree->count(E) == 0) {
      ProfileEdges->insert(E);
    }
  }
}

// Does not set weights for edges that aren't reachable
void BProfiling::getWeights() {
  Edge ExitEntryEdge = std::make_pair(ExitBB, &F->getEntryBlock());
  Edge tempEdge;
  EdgeWeights[ExitEntryEdge] = 1.0;
  float weight       = 0.0;
  int   num_succ_nle = 0; // Number of successors that aren't loop-exit edges
  std::string s1, s2;

  SmallVector<BasicBlock*, 128> Worklist;
  SmallPtrSet<BasicBlock*, 128> VisitedBlocks;
  VisitedBlocks.insert(ExitBB);
  BlockWeights[ExitBB] = 1.0;
  Worklist.push_back(&F->getEntryBlock());

  F->getEntryBlock().dump();
  for (unsigned i = 0; i < Worklist.size(); ++i) {
    BasicBlock* CurrentBlock = Worklist[i];
    Loop*       CurrentLoop  = LI->getLoopFor(CurrentBlock);
    SmallVector<ConstEdge, 16> ExitEdges;
    weight = 0.0;

    s1 = CurrentBlock->getName().str();

    for (pred_iterator PI = pred_begin(CurrentBlock), PE = pred_end(CurrentBlock); PI != PE; ++PI) {
      BasicBlock* B = *PI;
      // Add the predecessors to the map
      // 1) the weight of a BasicBlock is the sum of the weights of its
      //    incoming edges that are not backedges
      if (VisitedBlocks.count(B) == 0)
        continue;
      s2 = B->getName().str();
      weight += EdgeWeights[std::make_pair(B, CurrentBlock)];
    }
    if (&F->getEntryBlock() == CurrentBlock)
      weight = 1.0;


    // Set the weight of the current basic block
    BlockWeights[CurrentBlock] = weight;

    // 2) if BasicBlock b is a loop header with weight W and N = |loop_exits(B)|
    //    then each edge in loop_exits(b) has weight W/N
    if (CurrentLoop) {
      // Get all of the exit edges
      CurrentLoop->getExitEdges(ExitEdges);

      if (LI->isLoopHeader(CurrentBlock)) {
        int num_exits = ExitEdges.size();

        for (SmallVectorImpl<ConstEdge>::iterator LEI = ExitEdges.begin(), LEE = ExitEdges.end(); LEI != LEE; ++LEI) {
          s1 = LEI->first->getName().str();
          s2 = LEI->second->getName().str();
          Edge E = std::make_pair(const_cast<BasicBlock*>(LEI->first), const_cast<BasicBlock*>(LEI->second));
          EdgeWeights[E] = weight / num_exits;
          EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
        }

        // 3a) let W be the weight of b times LoopMultiplier (if b is loop header)
        weight = weight * LoopMultiplier;
        BlockWeights[CurrentBlock] = weight;
      }
    }

    int num_succ = 0;
    for (succ_iterator SI = succ_begin(CurrentBlock), SE = succ_end(CurrentBlock); SI != SE; ++SI) {
      num_succ += 1;
    }

    int   num_succ_lee = 0;   // Number of loop-edge exits
    float w_e          = 0.0; // loop-edge weights to successors of b

    if (CurrentLoop) {
      for (SmallVectorImpl<ConstEdge>::iterator LEI = ExitEdges.begin(), LEE = ExitEdges.end(); LEI != LEE; ++LEI) {
        Edge E = std::make_pair(const_cast<BasicBlock*>((*LEI).first), const_cast<BasicBlock*>((*LEI).second));
        // Get w_e = sum of weight of outgoing edges of b that are loop-exit edges
        if (E.first == CurrentBlock) {
          w_e += EdgeWeights[E];
          ++num_succ_lee;
        }
      }
    }

    // Number of successors that aren't loop-exit edges
    num_succ_nle = num_succ - num_succ_lee;

    // 3b) Each outgoing edge of b that is not a loop-exit edge has a weight (w-w_e)/N
    //     where N is the number of outgoing edges of b that are not loop-exit edges
    for (succ_iterator SI = succ_begin(CurrentBlock),
         SE = succ_end(CurrentBlock); SI != SE; ++SI) {
      BasicBlock* b1 = CurrentBlock;
      BasicBlock* b2 = *SI;
      if (VisitedBlocks.count(*SI) == 0) {
        s1 = CurrentBlock->getName().str();
        s2 = (*SI)->getName().str();

        Worklist.push_back(*SI);
        VisitedBlocks.insert(*SI);
      }

      if (ExitEdgesContains(ExitEdges, std::make_pair(b1, b2))) {
        continue;
      }
      Edge E = std::make_pair(b1, b2);
      EdgeWeights[E] = (weight - w_e) / (float)(num_succ_nle);
      EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
    }

    VisitedBlocks.insert(CurrentBlock);
  }
}

void BProfiling::printAllWeights() {
  fprintf(stderr,"**** BlockWeights ****\n");
  for (BlockWeightMap::iterator DI = BlockWeights.begin(), DE = BlockWeights.end(); DI != DE; ++DI) {
    fprintf(stderr, "%s: %f\n", DI->first->getName().str().c_str(), DI->second);
  }

  fprintf(stderr,"***** EdgeWeights *****\n");
  for (EdgeWeightMap::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
    printEdge(DI->first, DI->second);
  }
}

void BProfiling::printMaxSpanTree() {
  fprintf(stderr,"**** Max Spanning Tree ****\n");
  for (SetVector<Edge>::iterator I = MaxSpanningTree->begin(), E = MaxSpanningTree->end(); I != E; ++I) {
    printEdge(*I);
  }
}

void BProfiling::printInsertionEdges() {
  fprintf(stderr,"**** Insertion Edges ****\n");
  for (EdgeSet::iterator I = ProfileEdges->begin(), E = ProfileEdges->end(); I != E; ++I) {
    printEdge(*I);
  }
}

void BProfiling::printEdge(Edge E) {
  fprintf(stderr, "%s -> %s\n", E.first->getName().str().c_str(), E.second->getName().str().c_str());
}

void BProfiling::printEdge(Edge E, float F) {
  fprintf(stderr, "%s -> %s [%f]\n", E.first->getName().str().c_str(), E.second->getName().str().c_str(), F);
}

void BProfiling::printEdge(Edge E, unsigned U) {
  fprintf(stderr, "%s -> %s [%u]\n", E.first->getName().str().c_str(), E.second->getName().str().c_str(), U);
}

void BProfiling::printEdgeCounts() {
  for (EdgeCountSet::iterator I = EdgeCounts->begin(), E = EdgeCounts->end(); I != E; ++I)
    printEdge(I->first, I->second);
}

void BProfiling::printBlockCounts() {
  for (BlockCountSet::iterator I = BlockCounts->begin(), E = BlockCounts->end(); I != E; ++I)
    fprintf(stderr, "%s [%u]\n", I->first->getName().str().c_str(), I->second);
}

