#include "../palloc.h"
#include <stdio.h>

int riscv_kernel() {
  printf("This should not be called");
  return 0;
}
