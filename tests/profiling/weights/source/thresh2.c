#include <stdio.h>

void print(int i) {
  printf("%d\n", i);
}

// Only want to inline the print(i) on else branch!
void func(int i) {
  int c = 0;
  if (c)
    print(i);
  else
    print(i);
}

int main() {
  for (int i = 0; i < 11; ++i)
    func(0);
  return 0;
}
