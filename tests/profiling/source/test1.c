#include <stdio.h>
#include <stdlib.h>

int compute2(int a, int b, int *c, int *z) {
  int test= 5;
  int zzz = 4;
  int i;
  for (i=0;i<10000;i++) {
    c[0] += test;
    c[1] += zzz;
    *z = 12;
  }
  return (c[0] * c[1] * (*z));
}

int compute(int a, int b, int d, int e) {
  int *c = (int *) calloc(1, 2 * sizeof(int));
  int *z = (int *) calloc(1, sizeof(int));

  return compute2(a,b,c,z);
}

int main() {
  int x = 0, i;
  for (i=1;i<10000;i++) {
    x += compute(i,20,30,40);
  }
  printf("test %d\n", x);
  return 0;
}
