#include <time.h>
#include <stdlib.h>

// Test nested loops
int main(int argc, char** argv) {
  int x = 0;
  for (int i = 0; i < 10; ++i) {
    for (int j = 0; j < 5; ++j) {
      x += i;
    }
  }
  return 0;
}
