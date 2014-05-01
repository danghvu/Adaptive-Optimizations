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

#ifndef JITPROFILING_H_
#define JITPROFILING_H_

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

  class JITProfiling {
  public:
    JITProfiling(Function* Func, ExecutionEngine* JIT);
    virtual ~JITProfiling() { }

    void* CallbackFunction(BasicBlock* B);
    void* CallbackFunction();

    bool  run(bool changed = true);

    Function* F;
    LoopInfo* LI;
    BasicBlock* ExitBB;

    int LoopMultiplier; // Assumption on number of iterations for each loop
    bool previouslyExecuted;
    bool alreadyRemovedInsts;

    BlockWeightMap BlockWeights;  // Map holding weight values of each basic block
    EdgeWeightMap  EdgeWeights;   // Map holding weight values of each edge
    EdgeSet        MaxSpanningTree; // Edges in the maximum spanning tree
    EdgeSet        ProfileEdges;
    BlockSet       ProfileBlocks;

    // Specific to keeping track of edge/block counts
    EdgeCountSet         EdgeCounts;
    BlockCountSet        BlockCounts;
    ExecutionEngine*     TheJIT;
    FunctionPassManager* FPM;

    struct EdgeWeightCompare {
      bool operator()(const EdgeWeight& l, EdgeWeight& r) const {
        return l.second < r.second;
      }
    };

    std::priority_queue<EdgeWeight, std::vector<EdgeWeight>, EdgeWeightCompare> EdgePQ;

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

    void insertFunctionCallback();
    bool hasPInstruction();
    void doOptimization();

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

#endif
