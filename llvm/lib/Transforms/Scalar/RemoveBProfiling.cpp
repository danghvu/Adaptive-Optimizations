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

#define DEBUG_TYPE "remove-bprofiling"
#include "llvm/Transforms/Scalar.h"
#include "llvm/ADT/DepthFirstIterator.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/CFG.h"
#include <string>
#include <stdio.h>

using namespace llvm;

namespace {
  class RemoveBProfiling : public FunctionPass {
  public:
    static char ID;
    RemoveBProfiling () : FunctionPass(ID) {
      initializeRemoveBProfilingPass(*PassRegistry::getPassRegistry());
    }

  private:
    Function* F;

    virtual bool runOnFunction(Function& F);
    virtual void getAnalysisUsage(AnalysisUsage& AU) const {}

    bool removeBasicBlocks();
  };
}

char RemoveBProfiling::ID = 0;
INITIALIZE_PASS(RemoveBProfiling, "removebprofiling", "Brooks8 - Remove Profiling", false, false)
FunctionPass *llvm::createRemoveBProfilingPass() { return new RemoveBProfiling(); }

bool RemoveBProfiling::runOnFunction(Function& F) {
  this->F  = &F;
  return removeBasicBlocks();
}

bool RemoveBProfiling::removeBasicBlocks() {
  BasicBlock* Entry = &F->getEntryBlock();
  Instruction* Inst;
  SmallVector<BasicBlock*, 8>  Worklist;
  bool removed = false;

  for (df_iterator<BasicBlock*> DI = df_begin(Entry), DE = df_end(Entry); DI != DE; ++DI) {
    BasicBlock* B = *DI;
    std::string name = B->getName().str();

    if (name.find("ProfileBB") != std::string::npos)
      Worklist.push_back(B);
  }

  for (SmallVectorImpl<BasicBlock*>::iterator I = Worklist.begin(), E = Worklist.end(); I != E; ++I) {
    BasicBlock* B = *I;
    fprintf(stderr, "%lu\n", B->getInstList().size());
    // InstList.clear();

    // If there are only 5 instructions in the basic block, it only
    // contains profiling code and is safe to completely remove
    if (B->getInstList().size() == 5) {
      BasicBlock* Succ = *succ_begin(B);
      BasicBlock* Pred = B->getSinglePredecessor();
      TerminatorInst* PredTerm = Pred->getTerminator();
      unsigned PredNumSucc = PredTerm->getNumSuccessors();
      for (unsigned i = 0; i < PredNumSucc; ++i) {
        if (B == PredTerm->getSuccessor(i)) {
          PredTerm->setSuccessor(i, Succ);
          break;
        }
      }
      B->eraseFromParent();
      removed = true;
    }
    // Need to cover the case where profiling instructions are merged
    // with an existing basic block - only remove profiling instructions
    else {
      fprintf(stderr, "Damn...\n");
    }
  }
 return removed;
}

/*
void RemoveBProfiling::putBackInsts(BasicBlock* B, SmallVector<Instruction*, 8> InstList) {
  for (SmallVectorImpl<Instruction*>::reverse_iterator I = InstList.rbegin(), E = InstList.rend(); I != E; ++I) {
    Instruction* Inst = *I;
    B->getInstList().push_back(Inst);
  }
}*/
