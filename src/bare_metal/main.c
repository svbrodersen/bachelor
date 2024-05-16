#include "include/ISR.h"
#include "include/defines.h"
#include "include/kernel.h"
#include "include/threads.h"
#include "include/uart.h"
#include "palloc.h"
#include "threads/context/libucontext.h"
#include <stdbool.h>
#include <stdio.h>

volatile int alist[16] = {15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
thread_t threads[THREAD_NUMBER];
volatile int core_num_jobs[MAX_NUM_CORES];
volatile bool initialized = false;
void memcpy(void *dest, const void *src, size_t n) {
  for (size_t i = 0; i < n; i++) {
    ((char *)dest)[i] = ((char *)src)[i];
  }
}

int pow_2(int x) { return (0x1 << x); }

void get_curr_idx(int *curr_idx, int id) {
  *curr_idx = (THREAD_NUMBER - 1 - id) - (core_num_jobs[id] * MAX_NUM_CORES);
}

void mark_done() {
  int curr_idx, id;
  get_hartid(&id);
  get_curr_idx(&curr_idx, id);
  if (threads[curr_idx].parent == NULL) {
    // we are the last thread
    initialized = false;
    return;
  }
  core_num_jobs[id]++;
  threads[curr_idx].is_done = true;
  // atomically increase the value by 1
  asm("li t0, 1\n\t"
      "amoadd.w t1,t0,(%0)\n\t"
      : "=r"(threads[curr_idx].parent->value)
      :);
}

void merge(int res[], int l, int m, int r) {
  int lelem, relem;
  int i, j, k;
  int length_left = m - l + 1;
  int length_right = r - m;

  // temp arrays
  int left[length_left], right[length_right];
  for (i = 0; i < length_left; i++)
    left[i] = res[l + i];
  for (j = 0; j < length_right; j++)
    right[j] = res[m + 1 + j];

  i = 0;
  j = 0;
  k = l;
  while ((i < length_left) && (j < length_right)) {
    lelem = left[i];
    relem = right[j];
    if (lelem < relem) {
      res[k] = lelem;
      i++;
    } else {
      res[k] = relem;
      j++;
    }
    k++;
  }
  // empty left list if anything is left
  while (l < length_left) {
    res[k] = left[l];
    l++;
    k++;
  }
  // empty right list if anything is left
  while (r < length_right) {
    res[k] = right[l];
    l++;
    k++;
  }
  mark_done();
}
// Utility function to find minimum of two integers
int min(int x, int y) { return (x < y) ? x : y; }

/* Iterative mergesort function to sort arr[0...n-1] */
void mergeSort(int arr[], int l, int r) {
  int curr_size;  // For current size of subarrays to be merged
                  // curr_size varies from 1 to n/2
  int left_start; // For picking starting index of left subarray
                  // to be merged

  int n = r - l;
  // Merge subarrays in bottom up manner.  First merge subarrays of
  // size 1 to create sorted subarrays of size 2, then merge subarrays
  // of size 2 to create sorted subarrays of size 4, and so on.
  for (curr_size = 1; curr_size <= n - 1; curr_size = 2 * curr_size) {
    // Pick starting point of different subarrays of current size
    for (left_start = l; left_start < r - 1; left_start += 2 * curr_size) {
      // Find ending point of left subarray. mid+1 is starting
      // point of right
      int mid = min(left_start + curr_size - 1, r - 1);
      int right_end = min(left_start + 2 * curr_size - 1, r - 1);

      // Merge Subarrays arr[left_start...mid] & arr[mid+1...right_end]
      merge(arr, left_start, mid, right_end);
    }
  }
  mark_done();
}

int setBitNumber(int n) {

  // calculate the  number
  // of leading zeroes
  int k = __builtin_clz(n);

  return (31 - k);
}

void parallel_merge_sort(int *input_list, size_t length) {
  // number
  int depth = setBitNumber(MAX_NUM_CORES) + 1;
  int k, j, i;
  int l, m, r;
  int temp;
  int idx = 0;
  for (i = 0; i < depth; i++) {
    k = pow_2(i);

    if (k == 1) {
      thread_create(&threads[idx]);
      libucontext_makecontext(&threads[idx].context, (void (*)())merge, 4,
                              input_list, 0, length / 2, length);

      threads[0].parent = NULL;
      threads[0].value = 0;
      idx++;
      continue;
    }
    // we have enough work for all cores, so no need to create more merge
    // threads. Just default mergesort
    temp = length / k;
    for (j = 0; j < k; j++) {
      l = temp * j;       // l is inclusive
      r = temp * (j + 1); // r is exclusive
      thread_create(&threads[idx]);
      if (i == depth - 1) {
        libucontext_makecontext(&threads[idx].context, (void (*)())mergeSort, 3,
                                input_list, l, r);
        // Make it such that it looks like both children are finished (even
        // though there are none)
        threads[idx].value = 2;
      } else {
        libucontext_makecontext(&threads[idx].context, (void (*)())merge, 4,
                                input_list, l, (l + r) / 2, r);
        threads[idx].value = 0;
      }
      // index of parent is i - 1 + j/2
      threads[idx].parent = &threads[i + j / 2 - 1];
      idx++;
    }
  }
  printf("Done with parallel setup\n");
}

libucontext_ucontext_t secondary_main_context;

void secondary_main() {
  int id, curr_idx;

  while (!initialized) {
    // spin lock until mhartid 0 has created all jobs
  }

  get_hartid(&id);
  get_curr_idx(&curr_idx, id);
  if (curr_idx < 0) {
    // No more jobx for this mhart to do
    while (!threads[0].is_done) {
    }
    secondary_main();
  }
  while (threads[curr_idx].value < 2) {
    // spin lock until children are done
  }

  libucontext_setcontext(&threads[curr_idx].context);
}

int main() {
  init_palloc();
  libucontext_getcontext(&secondary_main_context);
  secondary_main_context.uc_stack.ss_size = THREAD_STACK_SIZE;
  secondary_main_context.uc_stack.ss_sp =
      palloc(secondary_main_context.uc_stack.ss_size);
  libucontext_makecontext(&secondary_main_context, secondary_main, 0);
  for (int i = 0; i < MAX_NUM_CORES; i++) {
    core_num_jobs[i] = 0;
  }
  parallel_merge_sort(alist, 16);
  initialized = true;
  libucontext_setcontext(&threads[THREAD_NUMBER - 1].context);
  return 0;
}
