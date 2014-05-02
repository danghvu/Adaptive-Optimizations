#include <stdio.h>

// Attempt at making irreducible loop
int main() {
  int a = 0;
  int b = 0;
  if (a == 0) {
    while (1) {
loop1:
      ++a;
      printf("A: %d\n", a);
      if (a < 10)
        goto loop2;
      else
        break;
    }
  }
  else {
    while (1) {
loop2:
      ++b;
      printf("B: %d\n", b);
      if (b < 10)
        goto loop1;
      else
        break;
    }
  }
  return 0;
}
