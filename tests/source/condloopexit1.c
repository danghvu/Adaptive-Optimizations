#include <time.h>
#include <stdlib.h>

// Test multiple exit-edges in loop
int main(int argc, char** argv) {
  int x = 0;
  for (int i = 0; i < 10; ++i) {
    if (x == 10)
      break;
    x += i;
  }
  return 0;
}
