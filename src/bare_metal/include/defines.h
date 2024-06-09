#if !defined(NUM_CORES)
#define NUM_CORES 4
#endif
#if !defined(STACK_SIZE)
#define STACK_SIZE 2048
#endif
#if !defined(THREAD_STACK_SIZE)
#define THREAD_STACK_SIZE 2048
#endif

#define THREAD_NUMBER 2 * NUM_CORES - 1
