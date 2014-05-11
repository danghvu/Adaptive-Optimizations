#include <stdio.h>

// Single conditional statement:
// -- Exit -> Entry : 1.0
// -- Entry -> If   : 0.5
// -- Entry -> Else : 0.5
// -- Else -> Exit  : 0.5
// -- If -> Exit    : 0.5
//
// -- Entry : 1.0
// -- If    : 0.5
// -- Else  : 0.5
// -- Exit  : 1.0
void landingpad1() {
  try {
    int* array;
    printf("I'm trying to access an array I haven't allocated to: %d\n", array[1]);
  }
  catch(...) {
    printf("Oops!\n");
  }
}

int main() {
  for (int i = 0; i < 100; ++i) {
    landingpad1();
  }
  return 0;
}
