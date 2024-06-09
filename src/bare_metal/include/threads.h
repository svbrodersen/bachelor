
#include "../threads/context/libucontext.h"
#include <stdbool.h>
#include <stdint.h>
#include <sys/types.h>

#define MAX_NUM_THREADS 0
typedef uint32_t Tid;

typedef struct thread {
  libucontext_ucontext_t context;
  volatile struct thread *parent;
  volatile int value;
  int l;
  int mid;
  int r;
} thread_t;

/* Initiates a thread with the target function. Must be called with makecontext
 * on the context element afterwards. The context is the function returned to
 * when finished running the context*/
int thread_create(thread_t *, size_t);
