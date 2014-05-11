#include <stdio.h>

// Single basic block
// -- Entry -> Entry : 1.0
//
// -- Entry : 1.0
void single1() {
// Entry:
  printf("Hello World\n");
}

int unreachable() {
  return 5;
  printf("Unreachable\n");
}

int main() {
  for (int i = 0; i < 100; ++i) {
    single1();
  }
}
