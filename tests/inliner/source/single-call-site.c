#include <stdlib.h>

// foo() will be executed func_freq times
// In each foo() call, bar() will be called block_freq time
// So if either t1 or t2 is greater than func_freq or block_freq respecitively
// then there will be no inlining. Otherwise bar() will be inlined.

int func_freq;
int block_freq;

void bar() {
}

void foo() {
  for (int i = 0; i < block_freq; i++) {
    bar();
  }
}

int main(int argc, char** argv) {
  func_freq = atoi(argv[1]);
  block_freq = atoi(argv[2]);

  for (int i = 0; i < func_freq; i++) {
    foo();
  }
  return 0;
}
