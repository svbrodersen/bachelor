#include "../threads/context/libucontext.h"
#include <stdbool.h>
#include <stdint.h>
#include <sys/types.h>

#define MAX_NUM_THREADS 100
#define THREAD_STACK_SIZE 1024

typedef uint32_t Tid;

typedef struct thread {
  libucontext_ucontext_t context;
  Tid thread_id;
  volatile struct thread *parent;
  volatile int value;
  int l;
  int mid;
  int r
} thread_t;

/* Initiates a thread with the target function. Must be called with makecontext
 * on the context element afterwards. The context is the function returned to
 * when finished running the context*/
int thread_create(thread_t *);
int thread_get(thread_t **, Tid);

void init_scheduler();
uint32_t queue_length();
void scheduler_add_thread(thread_t *thread);
void schedule_new_thread();
