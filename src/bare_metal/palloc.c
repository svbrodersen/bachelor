#include "include/defines.h"
#include <stddef.h>

extern unsigned char *_end;
volatile unsigned char *curr_mem[MAX_NUM_CORES];

int init_palloc() {
  for (int i = 0; i < MAX_NUM_CORES; i++) {
    curr_mem[i] = (unsigned char *)(_end + (i * STACK_SIZE));
  }
  return 0;
}

unsigned char *palloc(size_t size) {
  int id;
  asm volatile("la $1, mhartid\n\t" : "=r"(id) :);
  unsigned char *ret = (unsigned char *)curr_mem[id];
  curr_mem[id] += size;
  return ret;
}
