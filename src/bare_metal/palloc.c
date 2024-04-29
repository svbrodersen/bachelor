#include <stddef.h>

extern unsigned char _stack_end[];
unsigned char *curr_mem = (unsigned char *)&_stack_end;

unsigned char *palloc(size_t size) {
  unsigned char *ret = curr_mem;
  curr_mem += size;
  return ret;
}
