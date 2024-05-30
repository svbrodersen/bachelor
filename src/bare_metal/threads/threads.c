#include "../include/threads.h"
#include "../palloc.h"
#include "context/libucontext.h"
#include <stdarg.h>
#include <stdio.h>

int thread_create(thread_t *thread, size_t size) {
  va_list va;
  libucontext_getcontext(&(thread->context));
  /* set the uc_link for when function call when it is done */

  /*Set up a stack */
  thread->context.uc_stack.ss_size = size;
  thread->context.uc_stack.ss_sp = palloc(thread->context.uc_stack.ss_size);

  return 0;
}
