#include "context/libucontext.h"
#include <sys/types.h>

#define MAX_NUM_THREADS 100
#define THREAD_STACK_SIZE 1024

typedef u_int32_t Tid;

typedef struct thread {
  libucontext_ucontext_t context;
  Tid thread_id;
  struct thread *parent;
} thread_t;

int thread_create(thread_t *);
