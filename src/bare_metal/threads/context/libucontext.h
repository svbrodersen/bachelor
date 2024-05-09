#ifndef LIBUCONTEXT_LIBUCONTEXT_H
#define LIBUCONTEXT_LIBUCONTEXT_H

#include "bits.h"
#include <stdarg.h>
#include <stddef.h>

int libucontext_getcontext(libucontext_ucontext_t *);
void libucontext_makecontext(libucontext_ucontext_t *, void (*)(), int, ...);
int libucontext_setcontext(const libucontext_ucontext_t *);
int libucontext_swapcontext(libucontext_ucontext_t *,
                            const libucontext_ucontext_t *);
void vlibucontext_makecontext(libucontext_ucontext_t *, void (*)(), int,
                              va_list);

#endif
