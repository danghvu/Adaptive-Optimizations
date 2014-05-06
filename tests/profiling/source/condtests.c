#include <stdio.h>

// Single conditional statement:
// -- Exit -> Entry : 1.0
// -- Entry -> If   : 0.5
// -- Entry -> Else : 0.5
// -- Else -> Exit  : 0.5
// -- If -> Exit    : 0.5
//
// -- Entry : 1.0
// -- If    : 0.5
// -- Else  : 0.5
// -- Exit  : 1.0
void cond1() {
// Entry:
  int x = 5;
  int y = x % 2;
  if (y == 0) {
// If:
    printf("%d is even\n", x);
  }
  else {
// Else:
    printf("%d is odd\n", x);
  }
// Exit:
}

// Nested conditionals:
// -- Exit -> Entry       : 1.0
// -- Entry -> If.then    : 0.5
// -- Entry -> If.else    : 0.5
// -- If.then -> If.then1 : 0.25
// -- If.then -> If.else1 : 0.25
// -- If.then1 -> If.end1 : 0.25
// -- If.else1 -> If.end1 : 0.25
// -- If.end1 -> Exit     : 0.5
// -- If.else -> If.then2 : 0.25
// -- If.else -> If.else2 : 0.25
// -- If.then2 -> If.end2 : 0.25
// -- If.else2 -> If.end2 : 0.25
// -- If.end2 -> Exit     : 0.5
//
// -- Entry    : 1.0
// -- If.then  : 0.5
// -- If.then1 : 0.25
// -- If.else1 : 0.25
// -- If.end1  : 0.5
// -- If.else  : 0.5
// -- If.then2 : 0.25
// -- If.else2 : 0.25
// -- If.end2  : 0.5
// -- Exit     : 1.0
void cond2() {
// Entry:
  int x = 6;
  int y = x % 4;
  if (y % 2 == 0) {
// If.then:
    if (y == 0) {
// If.then1:
      printf("%d is divisible by 4\n", x);
    }
    else {
// If.else1:
      printf("%d is divisible by 2\n", x);
    }
// If.end1:
  }
// If.else:
  else {
    if (x == 1) {
// If.then2:
      printf("%d %% 4 = 1\n", x);
    }
    else {
// If.else2:
      printf("%d %% 4 = 3\n", x);
    }
// If.end2:
  }
// Exit:
  printf("Done!\n");
}

int main() {
  for (int i = 0; i < 100; ++i) {
    cond1();
    cond2();
  }
  return 0;
}
