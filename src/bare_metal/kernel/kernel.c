#include "../threads/threads.h"
#include <stdio.h>

int riscv_kernel() {
  thread_init();

  while (1) {
    printf("Hello from main function\n");
    for (int i = 0; i < 30000000; i++)
      ;
  }
}
