#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <sys/time.h>

#define MAX_VAL 100

double** createMatrix(int size) {
  int i, j;
  double** matrix = (double**)malloc(sizeof(double*)*size);
  for (i = 0; i < size; ++i) {
    matrix[i] = (double*)malloc(sizeof(double)*size);
    for (j = 0; j < size; ++j) {
      matrix[i][j] = rand()*MAX_VAL;
    }
  }
  return matrix;
}

void destroyMatrix(double** matrix, int size) {
  int i;
  for (i = 0; i < size; ++i) {
    free(matrix[i]);
  }
  free(matrix);
}

// Matrix-matrix multiplicat for square matrices
double** matmat(int size) {
  double** mat1 = createMatrix(size);
  double** mat2 = createMatrix(size);
  double** res  = (double**)malloc(sizeof(double*)*size);

  int i, j, k;
  for (i = 0; i < size; ++i) {
    res[i] = (double*)malloc(sizeof(double)*size);
    for (j = 0; j < size; ++j) {
      res[i][j] = 0;
    }
  }

  for (i = 0; i < size; ++i) {
    for (j = 0; j < size; ++j) {
      for (k = 0; k < size; ++k) {
        res[i][j] += mat1[i][k] * mat2[k][j];
      }
    }
  }

  destroyMatrix(mat1, size);
  destroyMatrix(mat2, size);
  return res;
}

int main() {
  struct timeval t1, t2;
  srand(time(NULL));

  int size = 500;
  int i;
  for (i = 0; i < 20; ++i) {
    gettimeofday(&t1, NULL);
    printf("Doing Matrix multiplication on size %d x %d\n", size, size);
    double** res = matmat(size);
    destroyMatrix(res, size);
    gettimeofday(&t2, NULL);
    printf("Time for iteration %d: %f sec\n", i, (double)(t2.tv_usec - t1.tv_usec)/1000000.0 + (double)(t2.tv_sec - t1.tv_sec));
  }
}
