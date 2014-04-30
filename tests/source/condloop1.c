#include <time.h>
#include <stdlib.h>
#include <stdio.h>

// Test loops inside branches
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand();
  int y = x % 2;
  if (y == 0) {
    for (int i = 0; i < 10; ++i) {
      x += i;
    }
  }
  else {
    for (int i = 0; i < 5; ++i) {
      x += i;
    }
  }
  printf("Final value = %d\n", x);
  return 0;
}
