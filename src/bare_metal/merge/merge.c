#include "merge.h"
#include "../palloc.h"
#include "../threads/threads.h"
#include <stddef.h>
#include <stdint.h>
#include <string.h>
int merge_sort(void *input_list, size_t size, size_t length) {}

int parallel_merge_sort(void *input_list, size_t size, size_t length) {
  if (queue_length() >= NUM_CORES) {
    merge_sort(input_list, size, length);
    return 0;
  }
  thread_t left_thread, right_thread;
  uint32_t left_length = length / 2;
  uint32_t right_length = length - left_length;
  void *left = palloc(size * left_length);
  void *right = palloc(right_length * size);
  return 0;
}
