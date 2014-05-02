#ifndef JITPROFILEDATA_H_
#define JITPROFILEDATA_H_

#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/PassManager.h"

using namespace llvm;

typedef std::pair<BasicBlock*, BasicBlock*> Edge;
typedef SetVector<Edge>                     EdgeSet;
typedef DenseMap<BasicBlock*, unsigned>     BlockCountMap;
typedef DenseMap<Edge, unsigned>            EdgeCountMap;
typedef DenseMap<Function*, unsigned>       FuncCountMap;
typedef DenseMap<Function*, EdgeSet*>       EdgeMapSet;
typedef DenseMap<Function*, FunctionPassManager*> FPMMap;

namespace llvm {
  class ExecutionEngine;
  // temporarily save this class here for easy compilation
  class JITProfileData {
    public:
      JITProfileData(int t1, int t2, ExecutionEngine* J);
      ~JITProfileData() { }

      int getThresholdT1() { return TH_ENABLE_BB_PROFILE; };
      int getThresholdT2() { return TH_ENABLE_APPLY_OPT; }

      void* FunctionCallback(Function *F);
      void* BasicBlockCallback(BasicBlock* B);

      void initializeEdgeCounts(Function *F);
      void initializeProfiling(Function* F);

      // Used by JITBBProfilingPass to put in the corresponding edges
      EdgeSet* getProfileEdges(Function* F)    { return (*ProfileEdges)[F]; }
      EdgeSet* getNonProfileEdges(Function* F) { return (*NonProfileEdges)[F]; }

      void setupUpdatingCounts(Function* F);
      void updateCounts(Function* F);
      void updateEdgeCounts(Function* F, BasicBlock* B, Edge E);
      void updateBlockCounts(Function* F);

      void DumpFuncFreq() {
        for (FuncCountMap::iterator I = FuncFreq.begin(), E=FuncFreq.end(); I != E; ++I) {
          dbgs() << I->first->getName() << " " << I->second << "\n";
        }
      }

      BasicBlock *ExitBB;

    private:
      // Thresholds
      int TH_ENABLE_BB_PROFILE;
      int TH_ENABLE_APPLY_OPT;

      // Function pass manager for running the function and
      // basic block profiling passes
      FPMMap FPMs;

      // The frequency variables
      FuncCountMap  FuncFreq;
      EdgeCountMap  EdgeFreq;
      BlockCountMap BlockFreq;

      // Edge information for each function
      EdgeMapSet*   ProfileEdges;
      EdgeMapSet*   NonProfileEdges;

      // The JIT object
      ExecutionEngine* TheJIT;
  };
}

#endif
