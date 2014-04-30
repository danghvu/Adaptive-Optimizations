#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Nested conditionals test
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand();
  int y = x % 4;
  if (y % 2 == 0) {
    if (y == 0)
      printf("%d is divisible by 4\n", x);
    else
      printf("%d is divisible by 2\n", x);
  }
  else {
    if (x == 1)
      printf("%d %% 4 = 1\n", x);
    else
      printf("%d %% 4 = 3\n", x);
  }
  printf("Done!\n");
  return 0;
}
