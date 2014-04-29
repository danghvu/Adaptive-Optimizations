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
    DynamicInliner() : FunctionPass(ID) {
      initializeDynamicInlinerPass(*PassRegistry::getPassRegistry());
    }

    // TODO: Constructor that takes function map

  private:
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

bool DynamicInliner::runOnFunction(Function& F) {
  bool changed = false;
  for (Function::iterator I = F.begin(); I != F.end(); I++) {
    changed = changed | runOnBasicBlock(*I);
  }
  return changed;
}

bool DynamicInliner::runOnBasicBlock(BasicBlock& B) {
  dbgs() << "DynamicInliner: Attempting to inline calls in " << B.getName() << "\n";

  bool changed = false;

  std::vector<CallInst*> workList;

  /* TODO: Change this logic */
  for (BasicBlock::iterator I = B.begin(); I != B.end(); I++) {
    if (CallInst* CI = dyn_cast<CallInst>(I)) {
      workList.push_back(CI);
    }
  }

  for (std::vector<CallInst*>::iterator wI = workList.begin(); wI!=workList.end(); wI++) {
    CallInst *CI = *wI;
    CallSite CS(CI);
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

  // TODO: Move to get inline cost
  Function* Caller = CS.getCaller();
  if (Caller->hasLocalLinkage() ||
      Caller->getLinkage() == GlobalValue::LinkOnceODRLinkage) {
    // A bunch of cost logic based on where the caller might be inlined
  }
  return true;
}

bool DynamicInliner::attemptToInline(CallSite CS) {
  InlineFunctionInfo Info;
  bool InsertLifetime = false;
  if (!InlineFunction(CS, Info, InsertLifetime)) return false;
  return true;
}
