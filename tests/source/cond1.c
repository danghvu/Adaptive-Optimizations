#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Simple conditional test
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand();
  int y = x % 2;
  if (y == 0)
    printf("%d is even\n", x);
  else
    printf("%d is odd\n", x);
  return 0;
}
