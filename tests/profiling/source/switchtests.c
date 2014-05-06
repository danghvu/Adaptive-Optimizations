#include <stdio.h>

// Simple switch:
//
// -- Exit -> Entry  : 1.0
// -- Entry -> Case0 : 0.333
// -- Entry -> Case1 : 0.333
// -- Entry -> Exit  : 0.333
// -- Case0 -> Case1 : 0.333
// -- Case1 -> Exit  : 0.666
//
// -- Entry : 1.0
// -- Case0 : 0.333
// -- Case1 : 0.666
// -- Exit  : 1.0
void switch1() {
// Entry:
  int x = 5;
  int y = x % 2;

  switch(y) {
    case 0:
// Case0:
      printf("%d is even\n", x);
    case 1:
// Case1:
      printf("%d is odd\n", x);
  }
// Exit:
}

// Longer switch:
//
// -- Exit -> Entry    : 1.0
// -- Entry -> Case1   : 0.2
// -- Entry -> Case2   : 0.2
// -- Entry -> Case3   : 0.2
// -- Entry -> Case0   : 0.2
// -- Entry -> Default : 0.2
// -- Case1 -> Exit    : 0.2
// -- Case2 -> Exit    : 0.2
// -- Case3 -> Exit    : 0.2
// -- Case0 -> Exit    : 0.2
// -- Default -> Exit  : 0.2
//
// -- Entry   : 1.0
// -- Case1   : 0.2
// -- Case2   : 0.2
// -- Case3   : 0.2
// -- Case0   : 0.2
// -- Default : 0.2
// -- Exit    : 1.0
void switch2() {
// Entry:
  int x = 6;
  int y = x % 4;

  switch(y) {
    case 1:
// Case1:
      printf("%d %% 5 = 1\n", x);
      break;
    case 2:
// Case2:
      printf("%d %% 5 = 2\n", x);
      break;
    case 3:
// Case3:
      printf("%d %% 5 = 3\n", x);
      break;
    case 0:
// Case0:
      printf("%d is divisible by 4!\n", x);
      break;
    default:
// Default:
      printf("Something went wrong\n");
      break;
  }
// Exit:
}

// Nested switches:
//
// -- Exit -> Entry       : 1.0
// -- Entry -> Case0      : 0.333
// -- Entry -> Case2      : 0.333
// -- Entry -> Default    : 0.333
// -- Case0 -> Case0y     : 0.111
// -- Case0 -> Case1y     : 0.111
// -- Case0 -> Defaulty   : 0.111
// -- Case0y -> Exity     : 0.111
// -- Case1y -> Exity     : 0.111
// -- Defaulty -> Exity   : 0.111
// -- Case2 -> Case1z     : 0.111
// -- Case2 -> Case2z     : 0.111
// -- Case2 -> Exitz      : 0.111
// -- Case1z -> Exitz     : 0.111
// -- Case2z -> Case1yz   : 0.055
// -- Case2z -> Defaultyz : 0.055
// -- Case1yz -> Exityz   : 0.111
// -- Defaultyz -> Exityz : 0.111
// -- Exity -> Exit       : 0.333
// -- ExitZ -> Exit       : 0.333
// -- Default -> Exit     : 0.333
//
// -- Entry     : 1.0
// -- Case0     : 0.333
// -- Case2     : 0.333
// -- Default   : 0.333
// -- Case0y    : 0.111
// -- Case1y    : 0.111
// -- Defaulty  : 0.111
// -- Exity     : 0.333
// -- Case1z    : 0.111
// -- Case2z    : 0.111
// -- Case1yz   : 0.055
// -- Defaultyz : 0.055
// -- Exityz    : 0.111
// -- Exitz     : 0.333
// -- Exit      : 1.0
void switch3() {
// Entry:
  int x = 0;
  int y = 1;
  int z = 2;

  switch(x) {
    case 0:
// Case0:
      switch(y) {
        case 0:
// Case0y:
          x = 5;
          break;
        case 1:
// Case1y:
          x = 2;
          break;
        default:
// Defaulty:
          x = 0;
          break;
      }
// Exity:
      break;
    case 1:
// Case2:
      switch(z) {
        case 1:
// Case1z:
          y = 4;
          break;
        case 2:
// Case2z:
          switch(y) {
// Case1yz:
            case 1:
              z = 10;
              break;
            default:
// Defaultyz:
              z = -4;
              break;
          }
// Exitzy:
          break;
      }
// Exitz:
    default:
// Default:
      z = 4;
  }
// Exit:
  printf("(%d, %d, %d)\n", x, y, z);
}

int main() {
  for (int i = 0; i < 100; ++i) {
    switch1();
    switch2();
    switch3();
  }
}
