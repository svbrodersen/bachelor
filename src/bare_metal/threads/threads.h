#include "context/libucontext.h"

#define MAX_NUM_THREADS 100

typedef struct thread {
  libucontext_ucontext_t context;
  int thread_id;
  struct thread *parent;
} thread_t;

int thread_init();
