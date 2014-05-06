#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Tests for when multiple exit blocks exist
// Introduces phi functions from UnifyFunctionExitNodes

int multiexit1() {
  srand(time(NULL));
  int x = rand() % 2;
  if (x == 0) {
    return 0;
  }
  return 0;
}

int multiexit2(int a) {
  switch(a) {
    case 0:
      return 5;
    case 1:
      return 2;
    case 2:
      return a;
    case 3:
      return 10;
    case 4:
      return -3;
    default:
      return 0;
  }
}

int multiexit3(int a) {
  for (int i = 0; i < a; ++i) {
    if (i == 20)
      return 5;
  }
  return 0;
}

int main() {
  for (int i = 0; i < 100; ++i) {
    multiexit1();
    multiexit2(i);
    multiexit3(i);
  }
}
