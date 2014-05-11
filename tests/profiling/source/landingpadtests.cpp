#include <stdio.h>

typedef struct {
  int a;
  double b;
} data_t;
void landingpad1() {
  try {
    data_t* d;
    printf("I'm trying to access a struct I haven't allocated to: %d\n", d->a);
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
