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

// this name is used for -stats argument
#define DEBUG_TYPE "bbprofiling"

#include "llvm/ExecutionEngine/JITProfilingData.h"
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
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/CFG.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"
#include <stdio.h>
#include <queue>
#include <vector>
#include <string>

using namespace llvm;

STATISTIC(numInsertedBB, "Number of profiling basic blocks inserted");
STATISTIC(numInsertedInst, "Number of profiling instructions inserted");

namespace llvm {
  typedef std::pair<const BasicBlock*, const BasicBlock*> ConstEdge;
  typedef std::pair<BasicBlock*, BasicBlock*> Edge;
  typedef std::pair<Edge, float>              EdgeWeight;
  typedef SetVector<Edge>                     EdgeSet;
  typedef SetVector<BasicBlock*>              BlockSet;
  typedef DenseMap<Edge, float>               EdgeWeightMap;
  typedef DenseMap<BasicBlock*, float>        BlockWeightMap;
  typedef DenseMap<BasicBlock*, BlockSet>     BlockMap;

  void* JITBasicBlockCallback(JITProfilingData* JPD, BasicBlock* B) {
    return JPD->BasicBlockCallback(B);
  }

  class JITBBProfiling : public FunctionPass {
  private:

  public:
    JITBBProfiling(JITProfilingData* _JPD) : JPD(_JPD) {
      initializeJITBBProfilingPass(*PassRegistry::getPassRegistry());
    }

    virtual ~JITBBProfiling() { 
      removeInstructions();
    }

  private:
    // -------------------------------------------------------------------------------- //
    //   Variables
    // -------------------------------------------------------------------------------- //

    // The JITBBProfilingInfo object which contains the callback function we
    // are inserting instructions for
    JITBBProfilingInfo* JPD;

    // Function of the pass
    Function* F;

    // Loop information for the pass (needed for getting the weights of
    // edges and basic blocks)
    LoopInfo* LI;

    // The SINGLE exit basic block (retrieved from the UnifyFunctionExitNodes
    // pass).
    BasicBlock* ExitBB;

    // Weights for all of the edges in the function
    EdgeWeightMap EdgeWeights;
    
    // Weights for all of the basic blocks in the function
    BlockWeightMap BlockWeights;

    // The loop multiplier used for the edge weight generation
    int LoopMultiplier;

    // The edges which result in the optimal placement of profiling instructions
    EdgeSet        ProfileEdges;

    // The basic blocks containing the profiling instructions
    BlockSet       ProfileBlocks;

    // The max spanning tree generated to be used for finding the optimal
    // set of insertion edges (based on edge weight)
    EdgeSet        MaxSpanningTree;

    // The basic blocks added as a result of inserting profiling instructions
    SmallPtrSet<BasicBlock*, 8> NewBlocks;

    // The comparator structure used for the priority queue during generating
    // the max spanning tree
    struct EdgeWeightCompare {
      bool operator()(const EdgeWeight& l, EdgeWeight& r) const {
        return l.second < r.second;
      }
    };

    // The priority queue used to sort the edges by weight for generating
    // the max spanning tree
    std::priority_queue<EdgeWeight, std::vector<EdgeWeight>, EdgeWeightCompare> EdgePQ;

    // -------------------------------------------------------------------------------- //
    //   Methods
    // -------------------------------------------------------------------------------- //
    virtual void getAnalysisUsage(AnalysisUsage& AU) const {
      AU.addRequired<UnifyFunctionExitNodes>();
      AU.addRequired<LoopInfo>();
    }

    // Method for getting the weights of each reachable edge. Unreachable edges
    // will not be given a weight and will not have profiling instructions.
    void getWeights();

    // Method for constructing the max spanning tree used for determining
    // the optimal set of insertion edges
    void constructMaxSpanTree();

    // Method for inserting the instructions based on the max spanning tree
    bool insertInstructions();

    // Methods for removing profiling instructions
    void removeInstructions();

    // Auxillary method used in removeInstructions()
    void removeProfiling(BasicBlock* B);

    // Auxillary method used in getWeights()
    bool ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem);

    // Convenient printing methods
    void printAllWeights();
    void printMaxSpanTree();
    void printInsertionEdges();
    void printEdge(Edge E);
    void printEdge(Edge E, float F);
    void printEdge(Edge E, unsigned U);
  };

  char JITBBProfiling::ID = 0;
  INITIALIZE_PASS(JITBBProfiling, "jitbprofilingpass", 
                  "Pass for inserting basic block profiling instructions", false, false);

  FunctionPass *createJITBBProfilingPass(JITProfilingData *JPD) {
    return new JITBBProfiling(JPD);
  }

  bool JITBBProfiling::runOnFunction(Function& F) {
    this->F         = &F;
    this->LI        = &getAnalysis<LoopInfo>();
    this->ExitBlock = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();

    // This value is somewhat arbitrary
    this->LoopMultiplier = 10;

    // Make sure the function has more than one basic block
    if (F.size() == 1) {
      DEBUG( dbgs() << "Function " << F.getName() << " does not need BB profiling [has single BB]!\n" );
      return false;
    }

    // TODO: Time-permitting: move getWeights() and constructMaxSpanTree() to a separate analysis pass
    getWeights();
    constructMaxSpanTree();
    return insertInstructions();
  }

  void JITBBProfiling::getWeights() {
    // Initialize the Exit->Entry edge to have a weight of 1.0
    Edge ExitEntryEdge = std::make_pair(ExitBlock, &F.getEntryBlock());
    Edge tempEdge;
    JP->EdgeWeights[ExitEntryEdge] = 1.0;
    int   num_succ_nle = 0;   // Number of successors that aren't loop-exit edges
    float weight;

    SmallVector<BasicBlock*, 128> Worklist;
    SmallPtrSet<BasicBlock*, 128> VisitedBlocks;

    VisitedBlocks.insert(JP->ExitBB);
    BlockWeights[ExitBlock] = 1.0;
    Worklist.push_back(&F.getEntryBlock());

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
      if (&F.getEntryBlock() == CurrentBlock)
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
          weight = weight * JP->LoopMultiplier;
          BlockWeights[CurrentBlock] = weight;
        }
      }

      // TODO: Find a quicker way to get the number of successors
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

  void JITBBProfiling::removeProfiling(BasicBlock* B) {
    // If the block was inserted for specifically profiling (A -> B -> C), change
    // such that A -> C and remove B from function
    if (B->getName().str().find("ProfileBB") != std::string::npos) {
      DEBUG( dbgs() << "BasicBlock [" << B->getName() << "] was added by us\n" );
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
      DEBUG( dbgs() << "Existing BasicBlock [" << B->getName()  << "] has profiling instructions\n" );
      IntToPtrInst* I = dyn_cast<IntToPtrInst>(&B->getInstList().front());

      // If the first instruction is an inttoptr
      if (I != NULL) {
        ConstantInt* CI = dyn_cast<ConstantInt>(I->getOperand(0));
        // And the inttoptr is specifically for the address of B, remove the first two instructions
        if (CI != NULL && CI->getValue() == (intptr_t)B) {
          // need to delete in reverse order here
          Instruction *I1 = B->getInstList().begin();
          Instruction *I2 = (++B->getInstList().begin());
          DEBUG( dbgs() << "Removing instruction: " << *I1 << "\n" );
          DEBUG( dbgs() << "Removing instruction: " << *I2 << "\n" );
          I2->eraseFromParent();
          I1->eraseFromParent();
        }
        // Otherwise remove the two instructions before the terminator
        else {
          BasicBlock::iterator ILT = B->getInstList().end();
          ILT--; ILT--;
          DEBUG( dbgs() << "Removing instruction: " << *ILT );
          ILT = B->getInstList().erase(ILT);
          ILT--;
          DEBUG( dbgs() << "Removing instruction: " << *ILT);
          ILT = B->getInstList().erase(ILT);
        }
      }
      // Otherwise remove the two instructions before the terminator
      else {
          BasicBlock::iterator ILT = B->getInstList().end();
          ILT--; ILT--;
          DEBUG( dbgs() << "Removing instruction: " << *ILT );
          ILT = B->getInstList().erase(ILT);
          ILT--;
          DEBUG( dbgs() << "Removing instruction: " << *ILT );
          ILT = B->getInstList().erase(ILT);
      }
    }
  }

  void JITBBProfiling::removeInstructions() {
    DEBUG( dbgs() << "\n*** Removing profiling ***\n" );
    for (BlockSet::iterator BSI = ProfileBlocks.begin(), BSE = ProfileBlocks.end(); BSI != BSE; ++BSI) {
      DEBUG( dbgs() << "Removing profiling from BB : " << (*BSI)->getName() << "\n" );
      removeProfiling(*BSI);
    }
    // Remove the two inttoptrs for the pass and the function
    F->getEntryBlock().getInstList().front().eraseFromParent();
    F->getEntryBlock().getInstList().front().eraseFromParent();
    DEBUG( dbgs() << "\n*** Done removing profiling ***\n\n" );
  }

  bool JITBBProfiling::insertInstructions() {
    ProfileBlocks.clear();

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

    // Insert the inttoptr instructions for the function callback and the JITBBProfilingInfo class
    intptr_t FP      = reinterpret_cast<intptr_t>(JITBasicBlockCallback);
    intptr_t JPDAddr = reinterpret_cast<intptr_t>(JPD);

    Value* FuncVal = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, FP));
    Value* JPDVal  = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, JPIAddr));

    IntToPtrInst* FuncInst = new IntToPtrInst(FuncVal, FunctionPtrTy);
    IntToPtrInst* JPDInst  = new IntToPtrInst(JPDVal, VoidPointerTy);

    F->getEntryBlock().getInstList().push_front(BPAddrToPtrInst);
    F->getEntryBlock().getInstList().push_front(FuncAddrToPtrInst);

    numInsertedInst += 2;

    int i = 0;
    for (EdgeSet::iterator I = ProfileEdges.begin(), E = ProfileEdges.end(); I != E; ++I) {
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

          // Change the successor E1->E2 to be E1->B
          int numSuccessors = TI->getNumSuccessors();
          for (int j = 0; j < numSuccessors; ++j) {
            if (E2 == TI->getSuccessor(j))
              TI->setSuccessor(j, B);
          }
          ++i;
        }
      }
      else {
        assert(0 && "Not well-formed basic block!\n");
      }

      // Get the address of basic block B
      intptr_t BBAddr = reinterpret_cast<intptr_t>(B);
      Value* BBVal = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, BBAddr));

      // Perform inttoptr on the basic block
      IntToPtrInst* BBInst = new IntToPtrInst(BBVal, VoidPointerTy);

      // Make the function call
      std::vector<Value*> ArrayRefVec;
      ArrayRefVec.push_back(JPDInst);
      ArrayRefVec.push_back(BBInst);
      CallInst* FuncCall = CallInst::Create(FuncInst, ArrayRef<Value*>(ArrayRefVec));

      // Insert the instructions
      if (B == E1) {
        // Remove the old branch and push all of the instructions just created onto E1
        // (the old and new branch are exactly the same, btw)
        B->getInstList().pop_back();
        B->getInstList().push_back(BBInst);
        B->getInstList().push_back(FuncInst);
        B->getInstList().push_back(BranchInst::Create(E2));

        numInsertedInst += 3;
      }
      else if (B == E2) {
        // Push everything to the front of E2 (everything has to be pushed in reverse)
        B->getInstList().push_front(FuncInst);
        B->getInstList().push_front(BBInst);

        numInsertedInst += 2;
      }
      else {
        // Otherwise the instructions go into the new basic block and we need to move E1 and
        // E2 into the correct locations
        B->moveAfter(E1);
        B->getInstList().push_back(BBInst);
        B->getInstList().push_back(FuncCall);
        B->getInstList().push_back(BranchInst::Create(E2));
        E2->moveAfter(B);
      }
      ProfileBlocks.insert(B);
    }

    // If we inserted no profiling code, remove the inttoptr instructions in the entry block
    if (!insertedInsts) {
      F->getEntryBlock().getInstList().pop_front();
      F->getEntryBlock().getInstList().pop_front();
      numInsertedInsts -= 2;
    }

    return insertedInsts;
  }

  bool JITBBProfiling::ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem) {
    for (SmallVectorImpl<ConstEdge>::iterator I = vec.begin(), E = vec.end(); I != E; ++I) {
      if (I->first == elem.first && I->second == elem.second)
        return true;
    }
    return false;
  }

  void JITBBProfiling::constructMaxSpanTree() {
    Edge E;
    EdgeWeight EW;

    EdgeSet* JPDProfileEdges = JPD->getProfileEdges(F);
    EdgeSet* JPDNonProfileEdges = JPD->getNonProfileEdges(F);

    SmallPtrSet<BasicBlock*, 32> TreeNodes;

    // Insert the Exit->Entry edge first so it never has
    // profiling code, since the edge doesn't actually exist
    E = std::make_pair(ExitBB, &F->getEntryBlock());
    TreeNodes.insert(E.first);
    TreeNodes.insert(E.second);
    MaxSpanningTree.insert(E);

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
          MaxSpanningTree.insert(E);
          break;
        }
        // c1 == 0, c2 == 1
        else if (c1 < c2) {
          TreeNodes.insert(E.first);
          MaxSpanningTree.insert(E);
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
      if (MaxSpanningTree.count(E) == 0) {
        ProfileEdges.insert(E);
        JPDProfileEdges->insert(E);
      }
      else {
        JPDNonProfileEdges->insert(E);
      }
    }
  }

  void JITBBProfiling::printAllWeights() {
    dbgs() << "**** BlockWeights ****\n";
    for (BlockWeightMap::iterator DI = BlockWeights.begin(), DE = BlockWeights.end(); DI != DE; ++DI) {
      dbgs() <<  DI->first->getName() << " " <<  DI->second << "\n";
    }

    dbgs() << "***** EdgeWeights *****\n";
    for (EdgeWeightMap::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
      printEdge(DI->first, DI->second);
    }
  }

  void JITBBProfiling::printMaxSpanTree() {
    dbgs() << "**** Max Spanning Tree ****\n";
    for (SetVector<Edge>::iterator I = MaxSpanningTree.begin(), E = MaxSpanningTree.end(); I != E; ++I) {
      printEdge(*I);
    }
  }

  void JITBBProfiling::printInsertionEdges() {
    dbgs() << "**** Insertion Edges ****\n";
    for (EdgeSet::iterator I = ProfileEdges.begin(), E = ProfileEdges.end(); I != E; ++I) {
      printEdge(*I);
    }
  }

  void JITBBProfiling::printEdge(Edge E) {
    dbgs() <<  E.first->getName() << " -> " <<  E.second->getName() << "\n";
  }

  void JITBBProfiling::printEdge(Edge E, float F) {
    dbgs() <<  E.first->getName() << ": " << E.second->getName() << " " << F << "\n";
  }

  void JITBBProfiling::printEdge(Edge E, unsigned U) {
    dbgs() <<  E.first->getName() << ": " << E.second->getName() << " " << U << "\n" ;
  }
} // llvm namespace
