#include <stdio.h>
#include <time.h>
#include <stdlib.h>

// Tests multiple exit blocks - BB2 should still
// have a successor to an exit block
//
//    BB1
//   /  |
// BB2  |
//   \  |
//    BB3
//
//  BB1 = 1
//  BB2 = 0.5
//  BB3 = 1
//
int main(int argc, char** argv) {
  srand(time(NULL));
  int x = rand() % 2;
  if (x == 0) {
    return 0;
  }
  return 0;
}
