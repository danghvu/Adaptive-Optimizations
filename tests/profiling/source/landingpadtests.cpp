#include <stdio.h>
#include <stdint.h>
#include <string>

using namespace std;

typedef struct {
  int a;
  double b;
} data_t;

void landingpad1() {
  try {
    string("abc").substr(10);
  }
  catch(...) {
    printf("Out of range exception!\n");
  }
}

int main() {
  for (int i = 0; i < 100; ++i) {
    //landingpad1();
  }
  return 0;
}
