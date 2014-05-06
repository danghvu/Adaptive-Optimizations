#include <stdio.h>

// Irreducible graph test
// -- Will break weight algorithm (Loop info doesn't detect loops).
// -- Still inserts correct amount of instructions but not necessarily
// -- optimal.
//
// -- Cannot intuitively deduct a "correct" weighting for each edge/basic block
//
// ** Note that irreducibletest.ll is the same test with the removal of unecessary
//    unconditional branches, producing this cfg:
//
//    Entry -> Loop1
//    Entry -> Loop2
//    Loop1 -> Loop2
//    Loop1 -> Exit
//    Loop2 -> Loop1
//    Loop2 -> Exit
void irreducible1() {
  int a = 0;
  int b = 0;
  if (a == 0) {
loop1:
    ++a;
    if (a < 10)
      goto loop2;
    else
      goto end;
  }
  else {
loop2:
    ++b;
    if (b < 10)
      goto loop1;
    else
      goto end;
  }
end:
  return;
}

int main() {
  for (int i = 0; i < 100; ++i) {
    irreducible1();
  }
}
