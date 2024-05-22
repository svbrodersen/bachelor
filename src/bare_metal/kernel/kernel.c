#include "../include/threads.h"
#include "../palloc.h"
#include <stdio.h>
void do_nothing1() { printf("Hello from 1\n"); }
void do_nothing2() { printf("Hello from 2\n"); }
void do_nothing3() { printf("Hello from 3\n"); }
void do_nothing4() { printf("Hello from 4\n"); }
void do_nothing5() { printf("Hello from 5\n"); }

int riscv_kernel() {
  thread_t *test1 = (thread_t *)palloc(sizeof(thread_t));
  thread_t *test2 = (thread_t *)palloc(sizeof(thread_t));
  thread_t *test3 = (thread_t *)palloc(sizeof(thread_t));
  thread_t *test4 = (thread_t *)palloc(sizeof(thread_t));
  thread_t *test5 = (thread_t *)palloc(sizeof(thread_t));
  init_scheduler();
  schedule_new_thread();
  printf("This should not be called");
  return 0;
}
