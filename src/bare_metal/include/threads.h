#include "../threads/context/libucontext.h"
#include <sys/types.h>

#define MAX_NUM_THREADS 100
#define THREAD_STACK_SIZE 1024

typedef uint32_t Tid;

typedef struct thread {
  libucontext_ucontext_t context;
  Tid thread_id;
  struct thread *parent;
  uint8_t child_done;
} thread_t;

/* Initiates a thread with the target function. Must be called with makecontext
 * on the context element afterwards*/
int thread_create(thread_t *, thread_t *, void (*)(), int argc, ...);
int thread_get(thread_t **, Tid);

void init_scheduler();
uint32_t queue_length();
void scheduler_add_thread(thread_t *thread);
void schedule_new_thread();
