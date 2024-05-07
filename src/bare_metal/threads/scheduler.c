#include "../palloc.h"
#include "context/libucontext.h"
#include "threads.h"
#include <stdbool.h>
#include <stdio.h>

volatile Tid queue[MAX_NUM_THREADS];
volatile size_t queue_head;
volatile size_t queue_tail;
bool queue_initialized = false;

void increase_counter(volatile size_t *counter) {
  *counter = (*counter + 1) % MAX_NUM_THREADS;
}
int queue_is_empty() {
  if (queue_head == queue_tail) {
    return 1;
  } else {
    return 0;
  }
}

int queue_is_full() {
  if ((queue_tail + 1) % MAX_NUM_THREADS == queue_head) {
    return 1;
  }
  return 0;
}

int queue_init() {
  if (queue_initialized) {
    return false;
  }
  queue_head = 0;
  queue_tail = 0;
  queue_initialized = true;
  return 0;
}

void queue_pop(Tid *ret) {
  *ret = queue[queue_head];
  increase_counter(&queue_head);
}

void queue_append(Tid item) {
  queue[queue_tail] = item;
  increase_counter(&queue_tail);
}
libucontext_ucontext_t schedule_new_thread_context;

void schedule_new_thread() {
  Tid new_thread_id;
  thread_t *new_thread;
  if (queue_is_empty()) {
    printf("EMPTY_QUEUE");
    while (true) {
    }
  }
  queue_pop(&new_thread_id);
  thread_get(&new_thread, new_thread_id);
  libucontext_setcontext(&new_thread->context);
}

void init_scheduler() {
  queue_init();
  libucontext_getcontext(&schedule_new_thread_context);
  schedule_new_thread_context.uc_stack.ss_size = THREAD_STACK_SIZE;
  schedule_new_thread_context.uc_stack.ss_sp =
      palloc(schedule_new_thread_context.uc_stack.ss_size);
  libucontext_makecontext(&schedule_new_thread_context, &schedule_new_thread,
                          0);
}

void scheduler_add_thread(thread_t *thread) { queue_append(thread->thread_id); }
