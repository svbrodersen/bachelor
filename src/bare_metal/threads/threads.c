#include "threads.h"
#include "../palloc.h"
#include "context/libucontext.h"

thread_t *threads[MAX_NUM_THREADS];
Tid thread_count = 0;

/* Initiates a thread with the target function. Must be called with makecontext
 * on the context element afterwards*/
int thread_create(thread_t *thread) {
  thread->thread_id = thread_count;
  thread_count++;
  threads[thread_count - 1] = thread;
  libucontext_getcontext(&(thread->context));
  /* set the uc_link for when function call when it is done */
  thread->context.uc_link = &threads[thread_count - 2]->context;

  /*Set up a stack */
  thread->context.uc_stack.ss_size = THREAD_STACK_SIZE;
  thread->context.uc_stack.ss_sp = palloc(thread->context.uc_stack.ss_size);
  return 0;
}
