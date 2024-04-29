#include "../palloc.h"
#include "../threads/threads.h"
#include <stdio.h>
void do_nothing() {
  while (1) {
    printf("Hello from do_nothing function\n");
    for (int i = 0; i < 30000000; i++)
      ;
  }
}

int riscv_kernel() {
  thread_t *test = (thread_t *)palloc(sizeof(thread_t));
  thread_create(test);
  libucontext_makecontext(&(test->context), &do_nothing, 0);
  libucontext_setcontext(&(test->context));
  printf("This should not be called");
  return 0;
}
