#include <stdio.h>

// Simple switch:
void switch1() {
  int x = 5;
  int y = x % 2;

  switch(y) {
    case 0:
      printf("%d is even\n", x);
    case 1:
      printf("%d is odd\n", x);
  }
}

// More complex switch:
void switch2() {
  int x = 6;
  int y = x % 5;

  switch(y) {
    case 1:
      printf("%d %% 5 = 1\n", x);
      break;
    case 2:
      printf("%d %% 5 = 2\n", x);
      break;
    case 3:
      printf("%d %% 5 = 3\n", x);
      break;
    case 4:
      printf("%d %% 5 = 4\n", x);
      break;
    case 0:
      printf("%d is divisible by 5!\n", x);
      break;
    default:
      printf("Something went wrong\n");
      break;
  }
}

// Nested switches:
void switch3() {
  int x = 0;
  int y = 1;
  int z = 2;

  switch(x) {
    case 0:
      switch(y) {
        case 0:
          x = 5;
        case 1:
          x = 2;
        default:
          x = 0;
      }
      break;

    case 1:
      switch(z) {
        case 1:
          y = 4;
        case 2:
          switch(y) {
            case 1:
              z = 10;
            default:
              z = -4;
          }
      }
    default:
      z = 4;
  }
  printf("(%d, %d, %d)\n", x, y, z);
}

int main() {
  for (int i = 0; i < 100; ++i) {
    switch1();
    switch2();
    switch3();
  }
}
