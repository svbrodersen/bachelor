#include "../include/threads.h"
#include "../palloc.h"
#include "context/libucontext.h"
#include <stdarg.h>
#include <stdio.h>

thread_t *threads_t[MAX_NUM_THREADS];
Tid thread_count = 0;

int thread_create(thread_t *thread, size_t size) {
  va_list va;
  thread->thread_id = thread_count;
  threads_t[thread_count] = thread;
  thread_count++;
  libucontext_getcontext(&(thread->context));
  /* set the uc_link for when function call when it is done */

  /*Set up a stack */
  thread->context.uc_stack.ss_size = size;
  thread->context.uc_stack.ss_sp = palloc(thread->context.uc_stack.ss_size);

  return 0;
}

int thread_get(thread_t **ret, Tid item) {
  *ret = threads_t[item];
  return 0;
}
