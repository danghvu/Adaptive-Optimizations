#include <time.h>
#include <stdlib.h>

// Test a single loop
int main(int argc, char** argv) {
  int x = 0;
  for (int i = 0; i < 10; ++i) {
    x += i;
  }
  return 0;
}
