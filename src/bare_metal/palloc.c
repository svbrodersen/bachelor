#include "include/defines.h"
#include <stddef.h>

unsigned char *cur_location;

void init_palloc() { asm("la %0, _stack_start\n\t" : "=r"(cur_location) :); }

void get_hartid(int *id) { asm volatile("csrr %0, mhartid\n\t" : "=r"(*id) :); }

unsigned char *palloc(size_t size) {

  unsigned char *ret = cur_location;
  cur_location += size;
  return ret;
}
