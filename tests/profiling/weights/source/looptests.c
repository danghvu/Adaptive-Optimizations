#include <time.h>
#include <stdlib.h>
#include <stdio.h>

// Single loop:
// LM = LoopMultiplier
//
// -- Exit -> Entry        : 1.0
// -- Entry -> For.cond    : 1.0
// -- For.cond -> For.body : LM - 1.0
// -- For.body -> For.inc  : LM - 1.0
// -- For.inc -> For.cond  : LM - 1.0
// -- For.cond -> Exit     : 1.0
//
// -- Entry:    1.0
// -- For.cond: LM
// -- For.inc:  LM - 1.0
// -- For.body: LM - 1.0
// -- Exit:     1.0
void loop1() {
// Entry:
  int x = 0;
  for (int i = 0; /* For.cond: */ i < 10; /* For.inc: */ ++i) {
// For.body:
    x += i;
  }
// Exit:
}

// Nested Loops:
// LM = LoopMultiplier
//
// -- Exit -> Entry          : 1.0
// -- Entry -> For.cond      : 1.0
// -- For.cond -> For.body   : LM - 1.0
// -- For.body -> For.cond2  : LM - 1.0
// -- For.cond2 -> For.body2 : (LM - 1.0) * (LM - 1.0)
// -- For.body2 -> For.inc2  : (LM - 1.0) * (LM - 1.0)
// -- For.inc2 -> For.cond2  : (LM - 1.0) * (LM - 1.0)
// -- For.cond2 -> For.inc   : LM - 1.0
// -- For.inc -> For.cond    : LM - 1.0
// -- For.cond -> Exit       : 1.0
//
// -- Entry     : 1.0
// -- For.cond  : LM
// -- For.inc   : (LM - 1.0)
// -- For.body  : (LM - 1.0)
// -- For.cond2 : (LM - 1.0) * LM
// -- For.inc2  : (LM - 1.0) * (LM - 1.0)
// -- For.body2 : (LM - 1.0) * (LM - 1.0)
// -- Exit      : 1.0
void loop2() {
// Entry:
  int x = 0;
  for (int i = 0; /* For.cond: */ i < 10; /* For.inc: */ ++i) {
// For.body:
    for (int j = 0; /* For.cond2: */ j < 5; /* For.inc2: */ ++j) {
// For.body2:
      x += i;
    }
  }
// Exit:
}

// Nested mix of loops with multiple exit edges:
void loop3() {
  int a = 0;
  while (1) {
    a += 1;
    int i = 0;
    for (i = 0; i < 100; ++i) {
      int j = 0;
      do {
        j = i+1;
      } while (j < 10);
    }
    if (a > 5)
      break;
  }
  printf("done\n");
}

int main() {
  for (int i = 0; i < 100; ++i) {
    loop1();
    loop2();
    loop3();
  }
}
