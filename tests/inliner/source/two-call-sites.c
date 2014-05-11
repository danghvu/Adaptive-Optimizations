#include <stdlib.h>
#include <stdio.h>

// foo() will be executed func_freq times
// In each foo() call, bar() will be called block_freq_1 times, then
// block_freq_2 times. Depeneding on t1 and t2 there will be either 0, 1, or
// 2 call sites inlined.

int func_freq;
int block_freq_1;
int block_freq_2;

void bar1() {
}

void bar2() {
}

void foo() {
  for (int i = 0; i < block_freq_1; i++) {
    bar1();
  }
  for (int i = 0; i < block_freq_2; i++) {
    bar2();
  }
}

int main(int argc, char** argv) {
  func_freq = atoi(argv[1]);
  block_freq_1 = atoi(argv[2]);
  block_freq_2 = atoi(argv[3]);

  for (int i = 0; i < func_freq; i++) {
    foo();
  }
  return 0;
}
