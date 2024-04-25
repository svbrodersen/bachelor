#include "threads.h"
#include "context/libucontext.h"

volatile thread_t threads[MAX_NUM_THREADS];

int thread_init() {
  libucontext_ucontext_t context;
  libucontext_getcontext(&context);
  return 0;
}
