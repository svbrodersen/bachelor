#ifndef LIBUCONTEXT_LIBUCONTEXT_H
#define LIBUCONTEXT_LIBUCONTEXT_H

#include "bits.h"
#include <stdarg.h>
#include <stddef.h>

int libucontext_getcontext(libucontext_ucontext_t *);
void libucontext_makecontext(libucontext_ucontext_t *, void (*func)(), int,
                             ...);
int libucontext_setcontext(const libucontext_ucontext_t *);
int libucontext_swapcontext(libucontext_ucontext_t *,
                            const libucontext_ucontext_t *);
void vlibucontext_makecontext(libucontext_ucontext_t *ucp, void (*func)(),
                              int argc, va_list args);

#endif
