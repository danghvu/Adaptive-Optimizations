#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Tests using switch as a terminator instruction
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand();
  int y = x % 2;

  switch(y) {
    case 0:
      printf("%d is even\n", x);
    case 1:
      printf("%d is odd\n", x);
  }
  return 0;
}
