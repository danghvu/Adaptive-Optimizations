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
#define DEBUG_TYPE "profiledata"

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/Transforms/IPO.h"
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
#include "llvm/Support/Debug.h"
#include <stdio.h>
#include <queue>
#include <string>
#include <functional>
#include <sys/time.h>

STATISTIC(fc_time, "Time for Function callback (usec)");
STATISTIC(bb_time, "Time for BasicBlock callback (usec)");

namespace llvm {

FunctionPass *createJITFunctionProfilingPass(JITProfileData *);
FunctionPass *createJITBBProfilingPass(JITProfileData *);
FunctionPass *createJITOptimizationsPass(JITProfileData *);

JITProfileData::JITProfileData(int t1, int t2, ExecutionEngine* J) {
  // Set the thresholds
  TH_ENABLE_BB_PROFILE = t1;
  TH_ENABLE_APPLY_OPT  = t2;

  TheJIT = J;
  fc_time = 0;
  bb_time = 0;
}


// Called only once per function before being emitted
void JITProfileData::initializeProfiling(Function* F) {
  JITFunctionData* JFD = new JITFunctionData();

  // Create a function pass manager specific to function F
  FunctionPassManager* FPM = new FunctionPassManager(F->getParent());
  JFD->FPM = FPM;
  JFD->removedProfiling = false;

  // Add function profiling to F
  FPM->add(createJITFunctionProfilingPass(this));
  FPM->doInitialization();
  FPM->run(*F);
  FPM->doFinalization();

  FuncData[F] = JFD;
}

void JITProfileData::doOptimization(Function *F) {
  FunctionPassManager* FPM = new FunctionPassManager(F->getParent());
  FPM->add(createJITOptimizationsPass(this));
  FPM->doInitialization();
  FPM->run(*F);
  FPM->doFinalization();
  delete FPM;
}

void* JITProfileData::BasicBlockCallback(Edge* B, Function* F) {
  struct timeval t1, t2;
  gettimeofday(&t1, NULL);
  JITFunctionData* JFD = FuncData[F];

  // Don't do anything if we removed the profiling instructions
  // but the function is still being executed! (B is NULL if it was
  // a basic block we inserted in the profiling pass)

  if (JFD->removedProfiling) {
    gettimeofday(&t2, NULL);
    bb_time += (t2.tv_usec - t1.tv_usec) + (t2.tv_sec - t1.tv_sec) * 1000000;
    return 0;
  }


  DEBUG( dbgs() << "Inside BB callback " << B->first->getName() << " -> " << B->second->getName() << "\n" );

  // Get the edge that the profiling exists on
  Edge E = *B;
  EdgeFreq[E] += 1;
  unsigned int stat = EdgeFreq[E];
  DEBUG( dbgs() << "New edge count: " << stat << "\n" );

  // If we meet the threshold or are past the threshold
  if (stat == getThresholdT2()) {
    // when someone has already perform optimization with the edge, remove profiling and return
    if (E.first->getParent() != F || E.second->getParent() != F) {
      delete JFD->FPM;
      JFD->removedProfiling = true;
      TheJIT->recompileAndRelinkFunction(F);
      return 0;
    }

    // Update the count information for edges and blocks in the function F
    // TODO: Add back hotblocks
    updateCounts(F);

    // Delete the profiling instructions
    // TODO: only delete profiling on ones that == T2
    delete JFD->FPM;
    JFD->FPM = NULL;
    JFD->removedProfiling = true;

    doOptimization(F);

    // Re-emit the function so the profiling is removed and optimizations are seen!
    TheJIT->recompileAndRelinkFunction(F);
  }

  gettimeofday(&t2, NULL);
  bb_time += (t2.tv_usec - t1.tv_usec) + (t2.tv_sec - t1.tv_sec) * 1000000;
  return 0;
}

void* JITProfileData::FunctionCallback(Function* F) {
  struct timeval t1, t2;
  gettimeofday(&t1, NULL);
  DEBUG( dbgs() << "Inside Func callback " << F->getName() << "\n" );

  // Update the function frequency
  FuncFreq[F] += 1;

  // If the updated frequency doesn't reach the T1 threshold, continue execution
  int stat = FuncFreq[F];
  if (stat < getThresholdT1()) {
    gettimeofday(&t2, NULL);
    fc_time += (t2.tv_usec - t1.tv_usec) + (t2.tv_sec - t1.tv_sec) * 1000000;
    return 0;
  }

  bool changed = false;

  JITFunctionData* JFD = FuncData[F];
  // If the updated frequency reaches the T2 threshold, then we need to add basic
  // block profiling
  if (stat == getThresholdT1()) {
    // Create a new pass manager for adding basic block profiling
    FunctionPassManager* FPM = new FunctionPassManager(F->getParent());

    // Add JITBBProfilingPass and its dependencies
    FPM->add(new LoopInfo());
    FPM->add(createUnifyFunctionExitNodesPass());
    FPM->add(createJITBBProfilingPass(this));
    FPM->doInitialization();
    FPM->run(*F);
    FPM->doFinalization();

    // At this point, the edges with and without profiling instructions for F will
    // be populated in ProfileEdges and NonProfileEdges
    initializeEdgeCounts(F);

    if (JFD->ProfileEdges.size() != 0) {
      // Actually removes function profiling instructions
      delete JFD->FPM;

      // Save this for later (so we can delete when it's done)
      JFD->FPM = FPM;
      changed = true;
    }
    else {
      delete FPM;
      gettimeofday(&t2, NULL);
      fc_time += (t2.tv_usec - t1.tv_usec) + (double)(t2.tv_sec - t1.tv_sec) * 1000000;
      return 0;
    }
  }

  // If there are no profiling instructions for basic blocks
  if ((JFD->ProfileEdges.size() == 0) && stat == getThresholdT1() + getThresholdT2()) {
    // Remove function profiling (doesn't do us any good anymore)
    DEBUG( dbgs() << "Removing fprofiling... " << F->getName() << "\n" );
    delete JFD->FPM;
    JFD->FPM = NULL;
    doOptimization(F);

    changed = true;
  }

  // If we get here, there is something that was changed
  // Re-emit the function so the profiling is actually executed!
  if (changed ) {
    DEBUG(dbgs() << "stat == T2 for function: " << F->getName() << "\n");
    TheJIT->recompileAndRelinkFunction(F);
  }

  gettimeofday(&t2, NULL);
  fc_time += (t2.tv_usec - t1.tv_usec) + (t2.tv_sec - t1.tv_sec) * 1000000;
  return 0;
}

void JITProfileData::initializeEdgeCounts(Function* F) {
  JITFunctionData* JFD = FuncData[F];
  for (EdgeSet::iterator I = JFD->NonProfileEdges.begin(), E = JFD->NonProfileEdges.end(); I != E; ++I) {
    EdgeFreq[*I] = 0;
  }

  for (EdgePtrSet::iterator I = JFD->ProfileEdges.begin(), E = JFD->ProfileEdges.end(); I != E; ++I) {
    EdgeFreq[*(*I)] = 0;
  }
}

void JITProfileData::setupUpdatingCounts(Function* F) {
  JITFunctionData* JFD = FuncData[F];
  // Clear counts for edges in F that do not have profiling
  for (EdgeSet::iterator I = JFD->NonProfileEdges.begin(), E = JFD->NonProfileEdges.end(); I != E; ++I) {
    EdgeFreq[*I] = 0;
  }

  // Clear counts for blocks in function F
  for (Function::iterator I = F->begin(), E = F->end(); I != E; ++I) {
    BlockFreq[&*I] = 0;
  }
}

void JITProfileData::updateCounts(Function* F) {
  // Clear the counts of the edges which don't have counters
  setupUpdatingCounts(F);

  // Update all edge counts for F
  Edge E = std::make_pair((BasicBlock*)NULL, (BasicBlock*)NULL);
  updateEdgeCounts(F, &F->getEntryBlock(), E);

  // Update all block counts for F
  updateBlockCounts(F);
}

void JITProfileData::updateEdgeCounts(Function* F, BasicBlock* B, Edge E) {
  JITFunctionData* JFD = FuncData[F];
  Edge E1;
  EdgeSet ES = JFD->NonProfileEdges;

  // Calculate the in dependencies
  unsigned in = 0;
  // If B is the entry block, we have to do the exit->entry edge as well
  if (B == &F->getEntryBlock()) {
    E1 = std::make_pair(JFD->ExitBlock, B);
    if ((E1.first != E.first || E1.second != E.second) && ES.count(E1) != 0) {
      updateEdgeCounts(F, E1.first, E1);
    }
  }

  for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
    if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
      E1 = std::make_pair(*pred_begin(*PI), B);
    else
      E1 = std::make_pair(*PI, B);
    if ((E1.first != E.first || E1.second != E.second) && ES.count(E1) != 0) {
      updateEdgeCounts(F, E1.first, E1);
    }
    in += EdgeFreq[E1];
  }

  // Calculate the out dependencies
  unsigned out = 0;
  for (succ_iterator SI = succ_begin(B), SE = succ_end(B); SI != SE; ++SI) {
    if ((*SI)->getName().str().find("ProfileBB") != std::string::npos)
      E1 = std::make_pair(B, *succ_begin(*SI));
    else
      E1 = std::make_pair(B, *SI);

    if ((E1.first != E.first || E1.second != E.second) && ES.count(E1) != 0) {
      updateEdgeCounts(F, E1.second, E1);
    }
    out += EdgeFreq[E1];
  }

  if (E.first != NULL) {
    EdgeFreq[E] = abs(in - out);
  }
}

void JITProfileData::updateBlockCounts(Function* F) {
  for (df_iterator<BasicBlock*> I = df_begin(&F->getEntryBlock()), E = df_end(&F->getEntryBlock()); I != E; ++I) {
    BasicBlock* B = *I;
    if (B == &F->getEntryBlock())
      BlockFreq[B] = EdgeFreq[std::make_pair(ExitBB, B)];
    else
      BlockFreq[B] = 0;

    for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
      Edge E1;
      if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
        E1 = std::make_pair(*pred_begin(B), B);
      else
        E1 = std::make_pair(*PI, B);
      BlockFreq[B] += EdgeFreq[E1];
    }
  }
}
} // namespace llvm
