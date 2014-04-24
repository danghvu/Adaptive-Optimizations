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

using namespace llvm;

namespace {
  class BBInliner : public BasicBlockPass {
  public:
    static char ID;
    BBInliner() : BasicBlockPass(ID) {
      initializeBBInlinerPass(*PassRegistry::getPassRegistry());
    }

  private:
    BasicBlock* B;

    virtual bool runOnBasicBlock(BasicBlock& B);

    virtual void getAnalysisUsage(AnalysisUsage& Info) const {}

    bool shouldInline(CallSite CS);
    bool attemptToInline(CallSite CS);
    InlineCost getInlineCost(CallSite CS);
  };
}

char BBInliner::ID = 0;
INITIALIZE_PASS(BBInliner, "dynamicinliner", "Mikida2-Profiling", false, false)
BasicBlockPass *llvm::createBBInlinerPass() { return new BBInliner(); }

bool BBInliner::runOnBasicBlock(BasicBlock& B) {
  this->B  = &B;

  bool changed = false;

  for (BasicBlock::iterator I = B.begin(); I != B.end(); I++) {
    CallSite CS(cast<Value>(I));
    if (CS) {
      Function* Callee = CS.getCalledFunction();

      if (Callee == 0 || Callee->isDeclaration()) continue;
      if (!shouldInline(CS)) continue;
      if (!attemptToInline(CS)) continue;
      changed = true;
    }
  }

  return changed;
}

InlineCost BBInliner::getInlineCost(CallSite CS) {
  return InlineCost::getAlways();
}

bool BBInliner::shouldInline(CallSite CS) {
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

  // TODO: Move to get inline cost
  Function* Caller = CS.getCaller();
  if (Caller->hasLocalLinkage() ||
      Caller->getLinkage() == GlobalValue::LinkOnceODRLinkage) {
    // A bunch of cost logic based on where the caller might be inlined
  }
  return true;
}

bool BBInliner::attemptToInline(CallSite CS) {
  InlineFunctionInfo Info;
  bool InsertLifetime = false;
  if (!InlineFunction(CS, Info, InsertLifetime)) return false;
  return true;
}
