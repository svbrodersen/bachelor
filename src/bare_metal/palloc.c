#include "include/defines.h"
#include <stddef.h>
#include <stdint.h>

unsigned char *cur_location;

void init_palloc() { asm("la %0, _stack_start\n\t" : "=r"(cur_location) :); }

void get_hartid(int *id) { asm volatile("csrr %0, mhartid\n\t" : "=r"(*id) :); }

unsigned char *palloc(size_t size) {
  cur_location += size;
  cur_location = cur_location + (16 - (uintptr_t)cur_location) % 16; // align to
  return cur_location;
}
