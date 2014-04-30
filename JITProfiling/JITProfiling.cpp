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
#include "JITProfiling.h"
#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/Transforms/Instrumentation.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Scalar.h"
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

namespace llvm {

// Constructor for the object
JITProfiling::JITProfiling(Function* Func) {
  F = Func;
}

bool JITProfiling::run(bool changed) {
  // If the function only has a single basic block, no profiling is needed (profiling
  // information can come from the function profiling of the JIT)
  if (this->F->size() == 1) {
    fprintf(stderr, "*** Function only has one basic block - no profiling code needed ***\n");
    return false;
  }

  // Create a pass manager to run the LoopInfo and UnifyFunctionExitNodes passes
  // which are required for adding the profiling
  FunctionPassManager* Manager = new FunctionPassManager(F->getParent());
  this->LI = new LoopInfo();
  Manager->add(this->LI);
  Pass* UFEN = createUnifyFunctionExitNodesPass();
  Manager->add(UFEN);
  Manager->doInitialization();
  Manager->run(*F);
  Manager->doFinalization();
  this->ExitBB = static_cast<UnifyFunctionExitNodes*>(UFEN)->getReturnBlock();

  bool results;
  // If MaxSpanningTree is not allocated, this is the first time we are running
  // the profiling "pass" on the function
  if (MaxSpanningTree == NULL) {
    MaxSpanningTree  = new EdgeSet();
    ProfileEdges     = new EdgeSet();
    ProfileBlocks    = new BlockSet();
    EdgeCounts       = new EdgeCountSet();
    BlockCounts      = new BlockCountSet();

    // Run analysis and insert instructions
    getWeights();
    constructMaxSpanTree();
    results = insertInstructions();
    initializeEdgeCounts();

    // Return value indicates if profiling code was actually inserted
    return results;
  }
  // Otherwise the "pass" has been run once before and we still have previous
  // information (max spanning tree, profiling edges, etc.)
  // If the argument specifies that the CFG has changed since the last time
  // this "pass" was run, reset all of the associated data structures and run
  // the entire analysis again
  else if (changed) {
    // Clear data structures
    MaxSpanningTree->clear();
    ProfileEdges->clear();
    ProfileBlocks->clear();
    EdgeCounts->clear();
    BlockCounts->clear();

    // Run analysis and insert instructions
    getWeights();
    constructMaxSpanTree();
    results = insertInstructions();

    // Reset the edge counts
    initializeEdgeCounts();

    // Return value indicates if profiling code was actually inserted
    return results;
  }
  // Otherwise, if the CFG has NOT changed, optimal placement for profiling code
  // stays the same.  This means the initial analysis is not needed! (Only need to
  // insert profiling code again
  else {
    results = insertInstructions();
    initializeEdgeCounts();
    return results;
  }
}

void* JITProfiling::CallbackFunction(BasicBlock* B) {
  // A profiling block is guaranteed to only have one predecessor and one successor
  //printf("In JITProfiling callback function! [%s]\n", B->getName().str().c_str());
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
  unsigned threshold = 2;//(TheJIT->getProfileInfo())->TH_ENABLE_APPLY_OPT;
  (*EdgeCounts)[E] += 1;
  fprintf(stderr, "Threshold: %u | Edge count: ", threshold);
  printEdge(E, (*EdgeCounts)[E]);

  if ((*EdgeCounts)[E] >= threshold) {
    // Update counts and keep track of basic blocks above threshold
    SmallPtrSet<BasicBlock*, 8> HotBlocks;
    updateCounts(HotBlocks, threshold);

    fprintf(stderr, "An edge is now equal to the threshold! Removing profiling...\n");
    // Remove profiling instructions
    removeInstructions();

    // At this point, instructions have been removed and optimizations can be performed
    // TODO: How should we trigger the optimizations to be run?
  }

  return 0;
}

void JITProfiling::initializeEdgeCounts() {
  EdgeCounts->clear();

  // Set all edges to have 0 frequency
  for (EdgeSet::iterator ESI = MaxSpanningTree->begin(), ESE = MaxSpanningTree->end(); ESI != ESE; ++ESI) {
    (*EdgeCounts)[*ESI] = 0;
  }
  for (EdgeSet::iterator ESI = ProfileEdges->begin(), ESE = ProfileEdges->end(); ESI != ESE; ++ESI) {
    (*EdgeCounts)[*ESI] = 0;
  }
}

void* MyCallbackFunction(JITProfiling* BP, BasicBlock* B) {
  //printf("In callback function!\n");
  return BP->CallbackFunction(B);
}

void JITProfiling::updateCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh) {
  Edge E = std::make_pair((BasicBlock*)NULL, (BasicBlock*)NULL);
  // Clear the counts of the edges which don't have counters
  for (EdgeSet::iterator ESI = MaxSpanningTree->begin(), ESE = MaxSpanningTree->end(); ESI != ESE; ++ESI) {
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

void JITProfiling::updateEdgeCountsDFS(BasicBlock* B, Edge E) {
  Edge E1;

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

void JITProfiling::updateBlockCounts(SmallPtrSet<BasicBlock*, 8> HotBlocks, unsigned thresh) {
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

void JITProfiling::removeProfiling(BasicBlock* B) {
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
        // need to delete in reverse order here
        Instruction *I1 = B->getInstList().begin();
        Instruction *I2 = (++B->getInstList().begin());
        I2->eraseFromParent();
        I1->eraseFromParent();
      }
      // Otherwise remove the two instructions before the terminator
      else {
        BasicBlock::iterator ILT = B->getInstList().end();
        ILT--; ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
        ILT--;
        fprintf(stderr, "Removing instruction: ");
        (*ILT).dump();
        ILT = B->getInstList().erase(ILT);
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
    }
  }
}

void JITProfiling::removeInstructions() {
  fprintf(stderr, "\n*** Removing profiling ***\n");
  for (BlockSet::iterator BSI = ProfileBlocks->begin(), BSE = ProfileBlocks->end(); BSI != BSE; ++BSI) {
    fprintf(stderr, "Removing profiling from BB : %s\n", (*BSI)->getName().str().c_str());
    removeProfiling(*BSI);
  }
  // Remove the two inttoptrs for the pass and the function
  F->getEntryBlock().getInstList().front().eraseFromParent();
  F->getEntryBlock().getInstList().front().eraseFromParent();
  fprintf(stderr, "\n*** Done removing profiling ***\n\n");
}

bool JITProfiling::insertInstructions() {
  ProfileBlocks->clear();

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

bool JITProfiling::ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem) {
  for (SmallVectorImpl<ConstEdge>::iterator I = vec.begin(), E = vec.end(); I != E; ++I) {
    if (I->first == elem.first && I->second == elem.second)
      return true;
  }
  return false;
}

void JITProfiling::constructMaxSpanTree() {
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

// Calculate the weights of each edge based on Kirchoff's Flow law.  This weight propogation algorithm
// follows the algorithm presented in "Optimally Profiling and Tracing Programs"
//
// Note that unreachable basic blocks are not given weights based on the structure of the algorithm
// This means that any edge that is unreachable will not have profiling instructions inserted
void JITProfiling::getWeights() {
  // Clear the block and edge weights if there are any values
  BlockWeights.clear();
  EdgeWeights.clear();

  // Initialize the Exit->Entry edge to have a weight of 1.0
  Edge ExitEntryEdge = std::make_pair(ExitBB, &F->getEntryBlock());
  Edge tempEdge;
  EdgeWeights[ExitEntryEdge] = 1.0;
  float weight       = 0.0;
  int   num_succ_nle = 0; // Number of successors that aren't loop-exit edges

  SmallVector<BasicBlock*, 128> Worklist;
  SmallPtrSet<BasicBlock*, 128> VisitedBlocks;
  VisitedBlocks.insert(ExitBB);
  BlockWeights[ExitBB] = 1.0;
  Worklist.push_back(&F->getEntryBlock());

  // Cannot save Worklist.size() and do a static comparison because the size changes!
  for (unsigned i = 0; i < Worklist.size(); ++i) {
    // Pull the next basic block from the work list and get the loop information (if any exists)
    BasicBlock* CurrentBlock = Worklist[i];
    Loop*       CurrentLoop  = LI->getLoopFor(CurrentBlock);
    SmallVector<ConstEdge, 16> ExitEdges;
    weight = 0.0;

    // For each predecessor of CurrentBlock
    for (pred_iterator PI = pred_begin(CurrentBlock), PE = pred_end(CurrentBlock); PI != PE; ++PI) {
      BasicBlock* B = *PI;
      // The weight of a BasicBlock is the sum of the weights of its
      // incoming edges that are not backedges (blocks that ARE in VisitedBlocks)
      if (VisitedBlocks.count(B) == 0)
        continue;
      weight += EdgeWeights[std::make_pair(B, CurrentBlock)];
    }
    // Since Exit->Entry does not actually exist as an edge in the CFG, we need to check if
    // this block is the entry block and set it's current weight to 1
    if (&F->getEntryBlock() == CurrentBlock)
      weight = 1.0;

    // Set the weight of the current basic block in the data structure
    BlockWeights[CurrentBlock] = weight;

    // If CurrentBlock is a loop header with weight W and N = |loop_exits(B)|
    // then each edge in loop_exits(b) has weight W/N
    if (CurrentLoop) {
      // Get all of the exit edges (a->b such that a is in CurrentLoop and
      // b is not)
      CurrentLoop->getExitEdges(ExitEdges);

      if (LI->isLoopHeader(CurrentBlock)) {
        int num_exits = ExitEdges.size();

        // Set the edge weights of all of the loop exit edges and
        for (SmallVectorImpl<ConstEdge>::iterator LEI = ExitEdges.begin(), LEE = ExitEdges.end(); LEI != LEE; ++LEI) {
          Edge E = std::make_pair(const_cast<BasicBlock*>(LEI->first), const_cast<BasicBlock*>(LEI->second));
          EdgeWeights[E] = weight / num_exits;
          EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
        }

        // Let W be the weight of b times LoopMultiplier (if b is loop header)
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

void JITProfiling::printAllWeights() {
  fprintf(stderr,"**** BlockWeights ****\n");
  for (BlockWeightMap::iterator DI = BlockWeights.begin(), DE = BlockWeights.end(); DI != DE; ++DI) {
    fprintf(stderr, "%s: %f\n", DI->first->getName().str().c_str(), DI->second);
  }

  fprintf(stderr,"***** EdgeWeights *****\n");
  for (EdgeWeightMap::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
    printEdge(DI->first, DI->second);
  }
}

void JITProfiling::printMaxSpanTree() {
  fprintf(stderr,"**** Max Spanning Tree ****\n");
  for (SetVector<Edge>::iterator I = MaxSpanningTree->begin(), E = MaxSpanningTree->end(); I != E; ++I) {
    printEdge(*I);
  }
}

void JITProfiling::printInsertionEdges() {
  fprintf(stderr,"**** Insertion Edges ****\n");
  for (EdgeSet::iterator I = ProfileEdges->begin(), E = ProfileEdges->end(); I != E; ++I) {
    printEdge(*I);
  }
}

void JITProfiling::printEdge(Edge E) {
  fprintf(stderr, "%s -> %s\n", E.first->getName().str().c_str(), E.second->getName().str().c_str());
}

void JITProfiling::printEdge(Edge E, float F) {
  fprintf(stderr, "%s -> %s [%f]\n", E.first->getName().str().c_str(), E.second->getName().str().c_str(), F);
}

void JITProfiling::printEdge(Edge E, unsigned U) {
  fprintf(stderr, "%s -> %s [%u]\n", E.first->getName().str().c_str(), E.second->getName().str().c_str(), U);
}

void JITProfiling::printEdgeCounts() {
  fprintf(stderr,"**** Edge Counts ****\n");
  for (EdgeCountSet::iterator I = EdgeCounts->begin(), E = EdgeCounts->end(); I != E; ++I)
    printEdge(I->first, I->second);
}

void JITProfiling::printBlockCounts() {
  fprintf(stderr,"**** Block Counts ****\n");
  for (BlockCountSet::iterator I = BlockCounts->begin(), E = BlockCounts->end(); I != E; ++I)
    fprintf(stderr, "%s [%u]\n", I->first->getName().str().c_str(), I->second);
}
}
