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

#include "llvm/ExecutionEngine/ExecutionEngine.h"
#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/Transforms/IPO.h"
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
#include "llvm/Support/Debug.h"
#include <stdio.h>
#include <queue>
#include <string>
#include <functional>

namespace llvm {

  FunctionPass *createJITFunctionProfilingPass(JITProfileData *);
  FunctionPass *createJITBBProfilingPass(JITProfileData *);

JITProfileData::JITProfileData(int t1, int t2, ExecutionEngine* J) {
  // Set the thresholds
  TH_ENABLE_BB_PROFILE = t1;
  TH_ENABLE_APPLY_OPT  = t2;

  ProfileEdges    = new EdgeMapSet();
  NonProfileEdges = new EdgeMapSet();

  TheJIT = J;
}


// Called only once per function
void JITProfileData::initializeProfiling(Function* F) {
  // Create a function pass manager specific to function F
  FunctionPassManager* FPM = new FunctionPassManager(F->getParent());
  FPMs[F] = FPM;

  (*ProfileEdges)[F]    = new EdgeSet();
  (*NonProfileEdges)[F] = new EdgeSet();

  // Add function profiling to F
  FPM->add(createJITFunctionProfilingPass(this));
  FPM->doInitialization();
  FPM->run(*F);
  FPM->doFinalization();
}

void* JITProfileData::BasicBlockCallback(BasicBlock* B) {
  DEBUG( dbgs() << "Inside BB callback " << B->getName() << "\n" );

  // Get the edge that the profiling exists on
  Edge E;
  if (B->getName().str().find("ProfileBB") != std::string::npos) {
    // A profiling block we have added is guaranteed to only have one predecessor and one successor
    E = std::make_pair(*pred_begin(B), *succ_begin(B));
  }
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

  EdgeFreq[E] += 1;
  int stat = EdgeFreq[E];
  DEBUG( dbgs() << "New edge count: " << stat << "\n" );

  // If we meet the threshold or are past the threshold
  if (stat == getThresholdT2()) {
    // Update the count information for edges and blocks in the function F
    // TODO: Add back hotblocks
    updateCounts(B->getParent());

    // Delete the profiling instructions
    // TODO: only delete profiling on ones that == T2
    delete FPMs[B->getParent()];

    // TODO: Run optimizations based on the frequency of the blocks in the function

    // Re-emit the function so the profiling is removed and optimizations are seen!
    TheJIT->recompileAndRelinkFunction(B->getParent());
  }

  return 0;
}

void* JITProfileData::FunctionCallback(Function* F) {
  DEBUG( dbgs() << "Inside Func callback " << F->getName() << "\n" );

  // Update the function frequency
  FuncFreq[F] += 1;

  // If the updated frequency doesn't reach the T1 threshold, continue execution
  int stat = FuncFreq[F];
  if (stat < getThresholdT1()) return 0;

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

    if ((*ProfileEdges)[F]->size() != 0) {
      // Actually removes function profiling instructions
      delete FPMs[F];

      // Save this for later (so we can delete when it's done)
      FPMs[F] = FPM;

      // Re-emit the function so the profiling is actually executed!
      TheJIT->recompileAndRelinkFunction(F);
    }
    else {
      delete FPM;
    }
  }

  // If there are no profiling instructions for basic blocks
  if (((*ProfileEdges)[F]->size() == 0) && stat == getThresholdT1() + getThresholdT2()) {
    // Remove function profiling (doesn't do us any good anymore)
    delete FPMs[F];

    // TODO: Optimizations here!
  }
  return 0;
}

void JITProfileData::initializeEdgeCounts(Function* F) {
  for (EdgeSet::iterator I = (*NonProfileEdges)[F]->begin(), E = (*NonProfileEdges)[F]->end(); I != E; ++I) {
    EdgeFreq[*I] = 0;
  }

  for (EdgeSet::iterator I = (*ProfileEdges)[F]->begin(), E = (*ProfileEdges)[F]->end(); I != E; ++I) {
    EdgeFreq[*I] = 0;
  }
}

void JITProfileData::setupUpdatingCounts(Function* F) {
  // Clear counts for edges in F that do not have profiling
  for (EdgeSet::iterator I = (*NonProfileEdges)[F]->begin(), E = (*NonProfileEdges)[F]->end(); I != E; ++I) {
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
  Edge E1;
  EdgeSet* ES = (*NonProfileEdges)[F];

  // Calculate the in dependencies
  unsigned in = 0;
  // If B is the entry block, we have to do the exit->entry edge as well
  if (B == &F->getEntryBlock()) {
    E1 = std::make_pair(ExitBB, B);
    if ((E1.first != E.first || E1.second != E.second) && ES->count(E1) != 0) {
      updateEdgeCounts(F, E1.first, E1);
    }
  }

  for (pred_iterator PI = pred_begin(B), PE = pred_end(B); PI != PE; ++PI) {
    if ((*PI)->getName().str().find("ProfileBB") != std::string::npos)
      E1 = std::make_pair(*pred_begin(*PI), B);
    else
      E1 = std::make_pair(*PI, B);
    if ((E1.first != E.first || E1.second != E.second) && ES->count(E1) != 0) {
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

    if ((E1.first != E.first || E1.second != E.second) && ES->count(E1) != 0) {
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
