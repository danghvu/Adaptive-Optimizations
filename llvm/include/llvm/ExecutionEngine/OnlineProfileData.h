#ifndef ONLINEPROFILEDATA_H_
#define ONLINEPROFILEDATA_H_

#include "llvm/ADT/DenseMap.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/Function.h"

using namespace llvm;

namespace llvm {
  // temporarily save this class here for easy compilation
  class JITOnlineProfileData {
    public:
      JITOnlineProfileData(int t1, int t2) {
        funcFreq.clear();
        TH_ENABLE_BB_PROFILE = t1;
        TH_ENABLE_APPLY_OPT = t2;
      }

      int getThresholdT1() { return TH_ENABLE_BB_PROFILE; };
      int getThresholdT2() { return TH_ENABLE_APPLY_OPT; }

      DenseMap<const Function *, int> funcFreq;

      void dump() {
        for (DenseMap<const Function *,int>::iterator it=funcFreq.begin();
            it!=funcFreq.end(); ++it)
          dbgs() << it->first->getName() << " => " << it->second << '\n';
      }

    private:
      int TH_ENABLE_BB_PROFILE;
      int TH_ENABLE_APPLY_OPT;
  };

}

#endif
