#include "include/ISR.h"
#include "include/defines.h"
#include "include/kernel.h"
#include "include/threads.h"
#include "include/uart.h"
#include "palloc.h"
#include "threads/context/defs.h"
#include "threads/context/libucontext.h"
#include <stdbool.h>
#include <stdio.h>

extern void secondary_main();
extern int main();

extern int alist[];
extern int alist_size;
volatile thread_t threads[THREAD_NUMBER];
volatile int core_num_jobs[NUM_CORES];
volatile bool initialized = false;
volatile int is_done = 0;

void atomic_add_1(int *val) {
  asm("li t0, 1\n\t"
      "amoadd.w t2,t0,%0\n\t"
      : "+A"(*val)
      :
      : "memory");
}

void memcpy(void *dest, const void *src, size_t n) {
  for (size_t i = 0; i < n; i++) {
    ((char *)dest)[i] = ((char *)src)[i];
  }
}

int pow_2(int x) { return (0x1 << x); }

void get_curr_idx(int *curr_idx, int id) {
  *curr_idx = (THREAD_NUMBER - 1 - id) - (core_num_jobs[id] * NUM_CORES);
}

void mark_done() {
  int curr_idx, id;
  get_hartid(&id);
  get_curr_idx(&curr_idx, id);
  core_num_jobs[id] += 1;
  // if we are the last thread
  if (threads[curr_idx].parent == NULL) {
    initialized = false;
    is_done = 1;
    return;
  }
  // atomically increase the value by 1
  atomic_add_1(&threads[curr_idx].parent->value);
}

void merge(int *res, int l, int m, int r) {
  int lelem, relem;
  int i, j, k;
  int length_left = m - l;
  int length_right = r - m;

  // temp arrays
  int left[length_left], right[length_right];
  for (i = 0; i < length_left; i++)
    left[i] = res[l + i];
  for (j = 0; j < length_right; j++)
    right[j] = res[m + j];

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
  while (i < length_left) {
    res[k] = left[i];
    i++;
    k++;
  }
  // empty right list if anything is left
  while (j < length_right) {
    res[k] = right[j];
    j++;
    k++;
  }
}

void parallel_merge(int *res, int l, int m, int r) {
  merge(res, l, m, r);
  mark_done();
}
// Utility function to find minimum of two integers
int min(int x, int y) { return (x < y) ? x : y; }

/* Iterative mergesort function to sort arr[l...r] */
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
      int mid = min(left_start + curr_size, r);
      int right_end = min(left_start + 2 * curr_size, r);

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
  int depth = setBitNumber(NUM_CORES) + 1;
  int k, j, i;
  int idx = 0;
  volatile thread_t *parent_thread, *curr_thread;
  for (i = 0; i < depth; i++) {
    k = pow_2(i);

    if (k == 1) {
      int mid = length / 2;
      thread_create(&threads[idx]);
      libucontext_makecontext(&threads[idx].context, (void (*)())parallel_merge,
                              4, input_list, 0, mid, length);

      threads[idx].parent = NULL;
      threads[idx].value = 0;
      threads[idx].l = 0;
      threads[idx].mid = mid;
      threads[idx].r = length;
      idx++;
      continue;
    }
    // find the ceiling of length/k
    for (j = 0; j < k; j++) {
      parent_thread = &threads[(idx - 1) / 2];
      curr_thread = &threads[idx];
      if (j % 2 == 0) {
        curr_thread->l = parent_thread->l;
        curr_thread->r = parent_thread->mid;
      } else {
        curr_thread->l = parent_thread->mid;
        curr_thread->r = parent_thread->r;
      }
      curr_thread->mid = curr_thread->l + (curr_thread->r - curr_thread->l) / 2;
      thread_create(curr_thread);
      if (2 * k > NUM_CORES) {
        libucontext_makecontext(&curr_thread->context, (void (*)())mergeSort, 3,
                                input_list, curr_thread->l, curr_thread->r);
        // Make it such that it looks like both children are finished (even
        // though there are none)
        threads[idx].value = 2;
      } else {
        // again ceiling
        libucontext_makecontext(
            &curr_thread->context, (void (*)())parallel_merge, 4, input_list,
            curr_thread->l, curr_thread->mid, curr_thread->r);
        curr_thread->value = 0;
      }
      // index of parent is idx - 1 /2
      threads[idx].parent = &threads[(idx - 1) / 2];
      idx++;
    }
  }
}

void secondary_main() {
  libucontext_ucontext_t secondary_main_ctx;
  // we need to context of the very first time of each core, so we can return
  // here once done
  libucontext_getcontext(&secondary_main_ctx);
  int id, curr_idx;
  get_hartid(&id);
  get_curr_idx(&curr_idx, id);
  if (curr_idx < 0) {
    // No more jobx for this mhart to do
    while (1) {
    }
  }
  while (!initialized) {
    // spin lock until mhartid 0 has created all jobs
  }
  while (threads[curr_idx].value < 2) {
    // spin lock until children are done
  }

  threads[curr_idx].context.uc_mcontext.__gregs[REG_S1] =
      (libucontext_greg_t)&secondary_main_ctx;
  libucontext_setcontext(&threads[curr_idx].context);
}

int main() {
  libucontext_ucontext_t main_ctx;
  for (int i = 0; i < alist_size; i++) {
    printf("%d,", alist[i]);
  }
  printf("\n");
  libucontext_getcontext(&main_ctx);
  int id, curr_idx;
  get_hartid(&id);
  get_curr_idx(&curr_idx, id);
  if (curr_idx < 0) {
    // No more jobs for this mhart to do, if you wait for is_done != 0, it will
    // reset and run again
    while (is_done != 1) {
    }
    for (int i = 0; i < alist_size; i++) {
      printf("%d,", alist[i]);
    }
    printf("\n");
    // spin loop to not start over again. Might be an idea to jump to _start and
    // reset completely
    while (1) {
    }

    initialized = false;
    is_done = 0;
  }
  // not done yet
  if (is_done != 1 && initialized) {
    threads[curr_idx].context.uc_mcontext.__gregs[REG_S1] =
        (libucontext_greg_t)&main_ctx;
    libucontext_setcontext(&threads[curr_idx].context);
  }
  init_palloc();
  for (int i = 0; i < NUM_CORES; i++) {
    core_num_jobs[i] = 0;
  }
  parallel_merge_sort(alist, alist_size);
  initialized = true;
  threads[THREAD_NUMBER - 1].context.uc_mcontext.__gregs[REG_S1] =
      (libucontext_greg_t)&main_ctx;
  libucontext_setcontext(&threads[THREAD_NUMBER - 1].context);
  return 0;
}
