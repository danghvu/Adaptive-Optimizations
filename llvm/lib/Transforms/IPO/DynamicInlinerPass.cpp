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

#define DEBUG_TYPE "mikida2"
#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/InlineCost.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Pass.h"
#include "llvm/Support/CallSite.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/IPO.h"
#include "llvm/Transforms/Utils/Local.h"

#include <vector>

using namespace llvm;

namespace {
  class DynamicInliner : public FunctionPass {
  public:
    static char ID;
    DynamicInliner() : FunctionPass(ID), hotBlocks(new DenseMap<BasicBlock*, unsigned>()) {
      initializeDynamicInlinerPass(*PassRegistry::getPassRegistry());
    }

    DynamicInliner(DenseMap<BasicBlock*, unsigned>* hot) : FunctionPass(ID), hotBlocks(hot) {
      initializeDynamicInlinerPass(*PassRegistry::getPassRegistry());
    }

  private:
    DenseMap<BasicBlock*, unsigned>* hotBlocks;

    virtual bool runOnFunction(Function& F);
    virtual bool runOnBasicBlock(BasicBlock& B);

    virtual void getAnalysisUsage(AnalysisUsage& Info) const {}

    bool shouldInline(CallSite CS);
    bool attemptToInline(CallSite CS);
    InlineCost getInlineCost(CallSite CS);
  };
}

char DynamicInliner::ID = 0;
// TODO: Make sure the last two params are correct
INITIALIZE_PASS(DynamicInliner, "dynamicinliner", "Mikida2-Profiling", false, false)
FunctionPass *llvm::createDynamicInlinerPass() { return new DynamicInliner(); }
FunctionPass *llvm::createDynamicInlinerPass(DenseMap<BasicBlock*, unsigned>* hot) { return new DynamicInliner(hot); }

bool DynamicInliner::runOnFunction(Function& F) {
  bool changed = false;
  for (Function::iterator I = F.begin(); I != F.end(); I++) {
    // TODO: Check if the BasicBlock is in hotBlocks
    changed = changed | runOnBasicBlock(*I);
  }
  return changed;
}

bool DynamicInliner::runOnBasicBlock(BasicBlock& B) {
  DEBUG( dbgs() << "DynamicInliner: Attempting to inline calls in " << B.getName() << "\n" );

  bool changed = false;

  std::vector<CallSite> worklist;

  for (BasicBlock::iterator I = B.begin(); I != B.end(); I++) {
    CallSite CS(cast<Value>(I));
    if (!CS || isa<IntrinsicInst>(I)) continue;
    if (CS.getCalledFunction() && CS.getCalledFunction()->isDeclaration()) continue;

    worklist.push_back(CS);
  }

  for (std::vector<CallSite>::iterator I = worklist.begin(); I!=worklist.end(); I++) {
    if (!shouldInline(*I)) continue;
    if (!attemptToInline(*I)) continue;
    changed = true;
  }

  return changed;
}

InlineCost DynamicInliner::getInlineCost(CallSite CS) {
  return InlineCost::getAlways();
}

bool DynamicInliner::shouldInline(CallSite CS) {
  InlineCost IC = getInlineCost(CS);
  if (IC.isAlways()) {
    return true;
  }
  if (IC.isNever()) {
    return false;
  }
  if (!IC) {
    return false;
  }

  return true;
}

bool DynamicInliner::attemptToInline(CallSite CS) {
  // TODO: Make sure the params are corrent
  InlineFunctionInfo Info;
  if (!InlineFunction(CS, Info)) return false;
  return true;
}
