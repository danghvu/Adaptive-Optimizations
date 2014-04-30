#ifndef ONLINEPROFILESETTING_H_
#define ONLINEPROFILESETTING_H_

#include "llvm/ADT/DenseMap.h"

using namespace llvm;

namespace llvm {
  // temporarily save this class here for easy compilation
  class JITOnlineProfileSetting {
    public:
      JITOnlineProfileSetting() {
        // TODO
      }

      DenseMap<const Function *, int> funcFreq;
      const static int TH_ENABLE_BB_PROFILE = 4;
      const static int TH_ENABLE_APPLY_OPT = 8;
  };

}

#endif
