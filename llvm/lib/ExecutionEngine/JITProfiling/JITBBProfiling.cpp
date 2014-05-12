//===- JITBBProfiling.cpp - Code to insert and remove profiling -----------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the optimal placement of profiling instructions for
// profiling the function of a program as described in "Optimally Profiling and
// Tracing Programs" [T Ball et al, 1994].  The pass requires LoopInfo,
// UnifyFunctionExitNodes, and BreakCriticalEdges.  By requiring BreakCritical-
// Edges, we guarantee that the original CFG is preserved.  The instructions
// inserted are to perform JITProfileData->BasicBlockCallback() every time the
// instructions are executed.
//
//===----------------------------------------------------------------------===//

// this name is used for -stats argument
#define DEBUG_TYPE "bbprofiling"

#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
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
#include <sys/time.h>
#include <float.h>
#include <limits.h>

using namespace llvm;

//STATISTIC(numInsertedBB, "Number of profiling basic blocks inserted");
STATISTIC(numInsertedInsts, "Number of profiling instructions inserted");

namespace llvm {
  typedef std::pair<const BasicBlock*, const BasicBlock*> ConstEdge;
  typedef std::pair<BasicBlock*, BasicBlock*> Edge;
  typedef std::pair<Edge, float>              EdgeWeight;
  typedef SetVector<Edge>                     EdgeSet;
  typedef SetVector<BasicBlock*>              BlockSet;
  typedef SetVector<Edge*>                    EdgePtrSet;
  typedef std::vector<Instruction*>           InstructionSet;
  typedef std::map<Edge, float>               EdgeWeightMap;
  typedef std::map<BasicBlock*, float>        BlockWeightMap;

  void* JITBasicBlockCallback(JITProfileData* JPD, Edge* E, Function* F) {
    return JPD->BasicBlockCallback(E, F);
  }

  class JITBBProfiling : public FunctionPass {
  private:

  public:
    static char ID;
    JITBBProfiling() : FunctionPass(ID) {
      weight_time = 0.0;
      tree_time = 0.0;
      insert_time = 0.0;
      total_time = 0.0;
    };
    JITBBProfiling(JITProfileData* _JPD) : FunctionPass(ID), JPD(_JPD) {}
    virtual bool runOnFunction(Function& F);

    virtual ~JITBBProfiling() {
      removeInstructions();
      for (EdgePtrSet::iterator I = NonProfileEdges.begin(), E=NonProfileEdges.end(); E != I; ++I) {
        delete (*I);
      }
    }

  private:
    // -------------------------------------------------------------------------------- //
    //   Variables
    // -------------------------------------------------------------------------------- //

    // The JITBBProfilingInfo object which contains the callback function we
    // are inserting instructions for
    JITProfileData* JPD;

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
    EdgePtrSet     ProfileEdges;
    EdgePtrSet     NonProfileEdges;

    // The basic blocks containing the profiling instructions
    BlockSet       ProfileBlocks;

    // The actual instructions for profiling
    InstructionSet  ProfileInsts;

    // The max spanning tree generated to be used for finding the optimal
    // set of insertion edges (based on edge weight)
    EdgeSet        MaxSpanningTree;

    // Timing variables for each portion of the pass
    double weight_time;
    double tree_time;
    double insert_time;
    double total_time;

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
      // BreakCriticalEdges is required so we don't have to add any new basic blocks.
      // During testing, we found many problems with having our own basic blocks (i.e.
      // instructions were moved to our blocks before removing profiling, causing
      // optimizations like simplifycfg and dse to segfault
      AU.addRequiredID(BreakCriticalEdgesID);
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
    // Note that unreachable edges won't be added
    bool insertInstructions();

    // Methods for removing profiling instructions
    void removeInstructions();

    // Auxillary method used in getWeights()
    bool ExitEdgesContains(SmallVector<ConstEdge, 16> vec, ConstEdge elem);

    // Convenient printing methods
    void printAllWeights();
    void printMaxSpanTree();
    void printInsertionEdges();
    void printEdge(Edge E);
    void printEdge(Edge E, float F);
    void printEdge(Edge E, unsigned U);
    void printTiming();
  };

  char JITBBProfiling::ID = 0;
  static RegisterPass<JITBBProfiling> YYY("jitbprofilingpass",
                  "Pass for inserting basic block profiling instructions", false, false);

  FunctionPass *createJITBBProfilingPass(JITProfileData *JPD) {
    return new JITBBProfiling(JPD);
  }

  bool JITBBProfiling::runOnFunction(Function& F) {
    struct timeval t1, t2;
    gettimeofday(&t1, NULL);

    this->F         = &F;
    this->LI        = &getAnalysis<LoopInfo>();
    this->ExitBB = getAnalysis<UnifyFunctionExitNodes>().getReturnBlock();
    JPD->FuncData[&F]->ExitBlock = ExitBB;
    // This value is somewhat arbitrary
    this->LoopMultiplier = 10;

    // If the function only has one basic block, we don't need profiling
    if (F.size() == 1) {
      DEBUG( dbgs() << "[JITBBProfilingPass] function <" << F.getName() << "> does not need profiling\n" );
      return false;
    }

    // TODO: Time-permitting: move getWeights() and constructMaxSpanTree() to a separate analysis pass
    getWeights();
    constructMaxSpanTree();
    bool changed = insertInstructions();

    gettimeofday(&t2, NULL);
    total_time = (double)(t2.tv_usec - t1.tv_usec)/1000000.0 + (double)(t2.tv_sec - t1.tv_sec);

    DEBUG( dbgs() << "[JITBBProfilingPass] Results for function <" << F.getName() << ">\n");
    printAllWeights();
    printMaxSpanTree();
    printInsertionEdges();
    printTiming();
    DEBUG( dbgs() << "[JITBBProfilingPass]\n" );
    return changed;
  }

  void JITBBProfiling::getWeights() {
    struct timeval t1, t2;
    gettimeofday(&t1, NULL);

    // Initialize the Exit->Entry edge to have a weight of 1.0
    Edge ExitEntryEdge = std::make_pair(ExitBB, &F->getEntryBlock());
    Edge tempEdge;
    EdgeWeights[ExitEntryEdge] = 1.0;
    int   num_succ_nle = 0;   // Number of successors that aren't loop-exit edges
    float weight;

    SmallVector<BasicBlock*, 128> Worklist;
    SmallVector<EdgeWeight, 128>  WorklistWeights;
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
            //EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
            WorklistWeights.push_back(std::make_pair(E, EdgeWeights[E]));
          }

          // Let W be the weight of b times LoopMultiplier (if b is loop header)
          weight = weight * LoopMultiplier;
          BlockWeights[CurrentBlock] = weight;
        }
      }

      int num_succ = CurrentBlock->getTerminator()->getNumSuccessors();
//      for (succ_iterator SI = succ_begin(CurrentBlock), SE = succ_end(CurrentBlock); SI != SE; ++SI) {
//        num_succ += 1;
//      }

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
        //EdgePQ.push(std::make_pair(E, EdgeWeights[E]));
        WorklistWeights.push_back(std::make_pair(E, EdgeWeights[E]));
      }

      VisitedBlocks.insert(CurrentBlock);
    }

    // We need to go back through and change the weights of edges leading from invoke instructions
    // to landing pads.  This will make sure we always add them to the max spanning tree so that instructions are never inserted on them
    for (SmallVectorImpl<EdgeWeight>::iterator IT = WorklistWeights.begin(), IE = WorklistWeights.end(); IT != IE; ++IT) {
      EdgeWeight EW = *IT;
      if (dyn_cast<InvokeInst>(EW.first.first->getTerminator()) && EW.first.second->isLandingPad())
         EW.second = DBL_MAX;
      EdgePQ.push(EW);
    }

    gettimeofday(&t2, NULL);
    weight_time = (double)(t2.tv_usec - t1.tv_usec)/1000000.0 + (double)(t2.tv_sec - t1.tv_sec);
  }

  void JITBBProfiling::removeInstructions() {
    if (ProfileEdges.size() == 0) return;

    // Remove any instructions we inserted
    for (InstructionSet::iterator I = ProfileInsts.begin(), E = ProfileInsts.end(); I != E; ++I) {
      (*I)->eraseFromParent();
    }
  }

  bool JITBBProfiling::insertInstructions() {
    struct timeval t1, t2;
    gettimeofday(&t1, NULL);

    ProfileBlocks.clear();

    // Create a pointer type of size sizeof(void*)
    PointerType* VoidPointerTy = PointerType::get(IntegerType::get(F->getContext(), CHAR_BIT), 0);

    //  Create a vector of the argument types
    std::vector<Type*> FunctionArgsTy;
    FunctionArgsTy.push_back(VoidPointerTy);
    FunctionArgsTy.push_back(VoidPointerTy);
    FunctionArgsTy.push_back(VoidPointerTy);

    // Create the function type: PointerTy func(PointerTy, PointerTy, PointerTy)
    // Arg 1 : JPD object
    // Arg 2 : Edge of profiling
    // Arg 3 : Function
    FunctionType* FunctionTy = FunctionType::get(VoidPointerTy, FunctionArgsTy, false);

    // Create the function-pointer type
    PointerType* FunctionPtrTy = PointerType::get(FunctionTy, 0);

    // Insert the inttoptr instructions for the function callback and the JITBBProfilingInfo class
    intptr_t FP      = reinterpret_cast<intptr_t>(JITBasicBlockCallback);
    intptr_t JPDAddr = reinterpret_cast<intptr_t>(JPD);
    intptr_t LLVMF   = reinterpret_cast<intptr_t>(F);

    Value* FuncVal  = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, FP));
    Value* JPDVal   = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, JPDAddr));
    Value* LLVMFVal = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, LLVMF));

    IntToPtrInst* FuncInst  = new IntToPtrInst(FuncVal, FunctionPtrTy);
    IntToPtrInst* JPDInst   = new IntToPtrInst(JPDVal, VoidPointerTy);
    IntToPtrInst* LLVMFInst = new IntToPtrInst(LLVMFVal, VoidPointerTy);

    F->getEntryBlock().getInstList().push_front(FuncInst);
    F->getEntryBlock().getInstList().push_front(JPDInst);
    F->getEntryBlock().getInstList().push_front(LLVMFInst);
    numInsertedInsts += 3;

    bool insertedInsts = false;

    for (EdgePtrSet::iterator I = ProfileEdges.begin(), E = ProfileEdges.end(); I != E; ++I) {
      insertedInsts = true;
      // Create a new BasicBlock
      BasicBlock* E1 = (*I)->first;
      BasicBlock* E2 = (*I)->second;
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
        else {
          E1->dump();
          E2->dump();
          assert( 0 && "Critical Edge found, should have applied splitting first" );
        }
      }
      else {
        assert(0 && "Not well-formed basic block!\n");
      }

      // Get the address of the edge for profiling
      intptr_t EdgeAddr = reinterpret_cast<intptr_t>(*I);
      Value* EdgeVal = ConstantInt::get(IntegerType::get(F->getContext(), sizeof(intptr_t)*CHAR_BIT), APInt(sizeof(intptr_t)*CHAR_BIT, EdgeAddr));

      // Perform inttoptr on the basic block
      IntToPtrInst* EdgeInst = new IntToPtrInst(EdgeVal, VoidPointerTy);

      // Make the function call
      std::vector<Value*> ArrayRefVec;
      ArrayRefVec.push_back(JPDInst);
      ArrayRefVec.push_back(EdgeInst);
      ArrayRefVec.push_back(LLVMFInst);
      CallInst* FuncCall = CallInst::Create(FuncInst, ArrayRef<Value*>(ArrayRefVec));

      // Insert the instructions
      if (B == E1) {
        Instruction* LastInst = B->getTerminator();
        EdgeInst->insertBefore(LastInst);
        FuncCall->insertBefore(LastInst);

        ProfileInsts.push_back(FuncCall);
        ProfileInsts.push_back(EdgeInst);

        numInsertedInsts += 3;
      }
      else if (B == E2) {
        // Insert them as the first instructions that are non-phi and non-landing pad instructions
        Instruction* FirstSafeInst = B->getFirstInsertionPt();
        EdgeInst->insertBefore(FirstSafeInst);
        FuncCall->insertBefore(FirstSafeInst);

        ProfileInsts.push_back(FuncCall);
        ProfileInsts.push_back(EdgeInst);

        numInsertedInsts += 2;
      }
      else {
        assert(0 && "Somehow B didn't get the correct value" );
      }
      ProfileBlocks.insert(B);
    }

    // If we inserted no profiling code, remove the inttoptr instructions in the entry block
    // This can happen if there are more than one basic blocks in a function, but only
    // one block is reachable (the entry block)
    if (!insertedInsts) {
      F->getEntryBlock().getInstList().pop_front();
      F->getEntryBlock().getInstList().pop_front();
      F->getEntryBlock().getInstList().pop_front();
      numInsertedInsts -= 3;
    }
    else {
      ProfileInsts.push_back(FuncInst);
      ProfileInsts.push_back(JPDInst);
      ProfileInsts.push_back(LLVMFInst);
    }

    gettimeofday(&t2, NULL);
    insert_time = (double)(t2.tv_usec - t1.tv_usec)/1000000.0 + (double)(t2.tv_sec - t1.tv_sec);

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
    struct timeval t1, t2;
    gettimeofday(&t1, NULL);

    Edge E;
    EdgeWeight EW;

    EdgePtrSet* JPDProfileEdges    = JPD->getProfileEdges(F);
    EdgeSet*    JPDNonProfileEdges = JPD->getNonProfileEdges(F);

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
      // If EdgePQ is empty at this point, this means we ran into a situation where
      // at least one block could not be added because it had multiple predecessors
      // and multiple successors (we would have had to insert a new block)
      if (EdgePQ.empty())
        assert(0 && "Unable to construct a max spanning tree for the function");
      while (!EdgePQ.empty()) {
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
        // HOWEVER, there is a special case where we HAVE to add an edge
        // between two already added nodes (documented in the README file
        // in the profiling sub-directory of the tests for this framework)
      }
      while (Backup.size() != 0)
        EdgePQ.push(Backup.pop_back_val());
    }

    for (EdgeWeightMap::iterator IE = EdgeWeights.begin(), EE = EdgeWeights.end(); IE != EE; ++IE) {
      Edge* temp = new Edge(IE->first);
      if (MaxSpanningTree.count(*temp) == 0) {
        ProfileEdges.insert(temp);
        JPDProfileEdges->insert(temp);
      }
      else {
        JPDNonProfileEdges->insert(*temp);
        NonProfileEdges.insert(temp);
      }
    }

    gettimeofday(&t2, NULL);
    tree_time = (double)(t2.tv_usec - t1.tv_usec)/1000000.0 + (double)(t2.tv_sec - t1.tv_sec);
  }

  void JITBBProfiling::printAllWeights() {
    DEBUG( dbgs() << "**** BlockWeights ****\n" );
    for (BlockWeightMap::iterator DI = BlockWeights.begin(), DE = BlockWeights.end(); DI != DE; ++DI) {
      DEBUG( dbgs() <<  DI->first->getName() << " " <<  DI->second << "\n" );
    }

    DEBUG( dbgs() << "***** EdgeWeights *****\n" );
    for (EdgeWeightMap::iterator DI = EdgeWeights.begin(), DE = EdgeWeights.end(); DI != DE; ++DI) {
      printEdge(DI->first, DI->second);
    }
  }

  void JITBBProfiling::printMaxSpanTree() {
    DEBUG( dbgs() << "**** Max Spanning Tree ****\n" );
    for (SetVector<Edge>::iterator I = MaxSpanningTree.begin(), E = MaxSpanningTree.end(); I != E; ++I) {
      printEdge(*I);
    }
  }

  void JITBBProfiling::printInsertionEdges() {
    DEBUG( dbgs() << "**** Insertion Edges ****\n" );
    for (EdgePtrSet::iterator I = ProfileEdges.begin(), E = ProfileEdges.end(); I != E; ++I) {
      printEdge(*(*I));
    }
  }

  void JITBBProfiling::printEdge(Edge E) {
    DEBUG( dbgs() <<  E.first->getName() << " -> " <<  E.second->getName() << "\n" );
  }

  void JITBBProfiling::printEdge(Edge E, float F) {
    DEBUG( dbgs() <<  E.first->getName() << ": " << E.second->getName() << " " << F << "\n" );
  }

  void JITBBProfiling::printEdge(Edge E, unsigned U) {
    DEBUG( dbgs() <<  E.first->getName() << ": " << E.second->getName() << " " << U << "\n" );
  }

  void JITBBProfiling::printTiming() {
    DEBUG( dbgs() << "**** Timing results ****\n" );
    DEBUG( dbgs() << "Weight generation: " << weight_time << "\n" );
    DEBUG( dbgs() << "Tree construction: " << tree_time << "\n" );
    DEBUG( dbgs() << "Inst Insertion:    " << insert_time << "\n" );
    DEBUG( dbgs() << "Total:             " << total_time << "\n" );
  }
} // llvm namespace
