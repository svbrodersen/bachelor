#include "include/ISR.h"
#include "include/defines.h"
#include "include/kernel.h"
#include "include/threads.h"
#include "include/uart.h"
#include "palloc.h"
#include <math.h>
#include <stdbool.h>

volatile thread_t threads[2 * MAX_NUM_CORES - 1];
volatile bool initialized = false;

int merge(int *res, int *left, int *right, int length_left, int length_right) {
  int l = 0;
  int r = 0;
  int index = 0;
  int lelem, relem;
  while ((l < length_left) && (r < length_right)) {
    lelem = left[l];
    relem = right[r];
    if (lelem < relem) {
      res[index] = lelem;
      l++;
    } else {
      res[index] = relem;
      r++;
    }
    index++;
  }
  // empty left list if anything is left
  while (l < length_left) {
    res[index] = left[l];
    l++;
    index++;
  }
  // empty right list if anything is left
  while (r < length_right) {
    res[index] = right[l];
    l++;
    index++;
  }
  return 0;
}

int merge_sort(int *input_list, size_t length) {

  int left_length = length / 2;
  int right_length = length - left_length;

  return 0;
}

int setBitNumber(int n) {

  // calculate the  number
  // of leading zeroes
  int k = __builtin_clz(n);

  // To return the value
  // of the number with set
  // bit at (31 - k)-th position
  // assuming 32 bits are used
  return 1 << (31 - k);
}

int parallel_merge_sort(int *intput_list, size_t length) {
  // number
  int depth = setBitNumber(MAX_NUM_CORES);
  int k;
  for (int i = 0; i < depth; i++) {
    k = (int)pow(2, i);
    for (int j = 0; j < k; j++) {
      thread_create(&threads[k + j - 1], merge_sort, int argc, ...)
    }
  }
}

int main() { return 0; }

int secondary_main() {
  while (1) {
  }
}
