#include "../include/threads.h"
#include "../palloc.h"
#include "context/libucontext.h"
#include <stdarg.h>
#include <stdio.h>

extern libucontext_ucontext_t schedule_new_thread_context;

thread_t *threads[MAX_NUM_THREADS];
Tid thread_count = 0;

int thread_create(thread_t *thread, thread_t *parent, void (*func)(void),
                  int argc, ...) {
  va_list va;
  thread->thread_id = thread_count;
  thread->child_done = 0;
  threads[thread_count] = thread;
  thread_count++;
  libucontext_getcontext(&(thread->context));
  /* set the uc_link for when function call when it is done */
  thread->context.uc_link = &schedule_new_thread_context;

  /*Set up a stack */
  thread->context.uc_stack.ss_size = THREAD_STACK_SIZE;
  thread->context.uc_stack.ss_sp = palloc(thread->context.uc_stack.ss_size);

  va_start(va, argc);
  vlibucontext_makecontext(&thread->context, func, argc, va);
  va_end(va);
  return 0;
}

int thread_get(thread_t **ret, Tid item) {
  *ret = threads[item];
  return 0;
}
