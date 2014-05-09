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

#define DEBUG_TYPE "dynamicinliner"

#include "llvm/ADT/Statistic.h"
#include "llvm/Analysis/InlineCost.h"
#include "llvm/ExecutionEngine/JITOptimization.h"
#include "llvm/ExecutionEngine/JITProfileData.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Pass.h"
#include "llvm/Support/CallSite.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/Utils/Cloning.h"

#include <vector>

using namespace llvm;

STATISTIC(numDynamicInlines, "Number of call sites dynamically inlined");

namespace {
  class DynamicInliner : public FunctionPass {
  public:
    static char ID;
    DynamicInliner() : FunctionPass(ID), data(NULL) {
      initializeDynamicInlinerPass(*PassRegistry::getPassRegistry());
    }

    DynamicInliner(JITProfileData* data) : FunctionPass(ID), data(data) {
      initializeDynamicInlinerPass(*PassRegistry::getPassRegistry());
    }

  private:
    JITProfileData* data;

    virtual bool runOnFunction(Function& F);
    virtual bool runOnBasicBlock(BasicBlock& B);

    virtual void getAnalysisUsage(AnalysisUsage& Info) const {}

    bool shouldInline(CallSite CS);
    bool attemptToInline(CallSite CS);
    InlineCost getInlineCost(CallSite CS);
  };
}

char DynamicInliner::ID = 0;
INITIALIZE_PASS(DynamicInliner, "dynamicinliner", "Mikida2-Profiling", false, false)
FunctionPass *llvm::createDynamicInlinerPass(JITProfileData* data) { return new DynamicInliner(data); }

bool DynamicInliner::runOnFunction(Function& F) {
  if (!data) return false;

  DEBUG( dbgs() << "DynamicInliner: Attempting to inline calls in " << F.getName() << "\n" );
  bool changed = false;

  std::vector<BasicBlock*> wl;
  for (Function::iterator I = F.begin(); I != F.end(); I++) {
    wl.push_back(&*I);
  }

  for (std::vector<BasicBlock*>::iterator II = wl.begin(), IE = wl.end(); IE != II; ++II) {
    changed = changed | runOnBasicBlock(*(*II));
  }

  DEBUG( dbgs() << "DynamicInliner: Finished with " << F.getName() << "\n" );
  return changed;
}

bool DynamicInliner::runOnBasicBlock(BasicBlock& B) {
  if (!data) return false;

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
    numDynamicInlines++;
    changed = true;
  }

  DEBUG( dbgs() << "DynamicInliner: Finished with " << B.getName() << "\n" );
  return changed;
}

// For now this function just checks to see if the BasicBlock containing the
// call site has hit the threshold. If so, always inline, otherwise don't.
InlineCost DynamicInliner::getInlineCost(CallSite CS) {
  unsigned freq = 0;
  BasicBlock* B = CS.getInstruction()->getParent();
  if (data->getBlockMap().count(B)) {
    freq = data->getBlockMap().find(B)->second;
  }

  if (freq >= data->getThresholdT2()) return InlineCost::getAlways();
  else return InlineCost::getNever();
}

bool DynamicInliner::shouldInline(CallSite CS) {
  InlineCost IC = getInlineCost(CS);
  if (IC.isAlways()) {
    return true;
  }

  return false;
}

bool DynamicInliner::attemptToInline(CallSite CS) {
  InlineFunctionInfo Info;
  if (!InlineFunction(CS, Info)) return false;
  return true;
}
