#include <stdio.h>

void func(int i) {
  printf("%d\n", i);
}

// Simple code to test threshold feature
int main() {
  for (int i = 0; i < 11; ++i)
    func(i);
  return 0;
}
