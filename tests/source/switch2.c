#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Test using switch as a terminator instruction (includes default case)
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand();
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
  return 0;
}
