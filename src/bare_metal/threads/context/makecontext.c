
/*
 * Copyright (c) 2018 Ariadne Conill <ariadne@dereferenced.org>
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * This software is provided 'as is' and without any warranty, express or
 * implied.  In no event shall the authors be liable for any damages arising
 * from the use of this software.
 */

#include "bits.h"
#include "defs.h"
#include "libucontext.h"
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>

extern void libucontext_trampoline(void);

void libucontext_makecontext(libucontext_ucontext_t *ucp, void (*func)(),
                             int argc, ...) {
  libucontext_greg_t *sp, *regp;
  va_list va;
  int i;

  /* set up and align the stack. */
  sp = (libucontext_greg_t *)((uintptr_t)ucp->uc_stack.ss_sp +
                              ucp->uc_stack.ss_size);
  sp -= argc < 8 ? 0 : argc - 8;
  sp = (libucontext_greg_t *)(((uintptr_t)sp & -16L));

  /* set up the ucontext structure */
  ucp->uc_mcontext.__gregs[REG_RA] = (libucontext_greg_t)libucontext_trampoline;
  ucp->uc_mcontext.__gregs[REG_S0] = 0;
  ucp->uc_mcontext.__gregs[REG_S1] = (libucontext_greg_t)ucp->uc_link;
  ucp->uc_mcontext.__gregs[REG_SP] = (libucontext_greg_t)sp;
  ucp->uc_mcontext.__gregs[REG_PC] = (libucontext_greg_t)func;

  va_start(va, argc);

  /* first 8 args go in $a0 through $a7. */
  regp = &(ucp->uc_mcontext.__gregs[REG_A0]);

  for (i = 0; (i < argc && i < 8); i++) {
    *regp++ = va_arg(va, libucontext_greg_t);
  }

  /* remainder overflows into stack */
  for (; i < argc; i++) {
    *sp++ = va_arg(va, libucontext_greg_t);
  }
  va_end(va);
}

void vlibucontext_makecontext(libucontext_ucontext_t *ucp, void (*func)(),
                              int argc, va_list args) {
  libucontext_greg_t *sp, *regp;
  int i;

  /* set up and align the stack. */
  sp = (libucontext_greg_t *)((uintptr_t)ucp->uc_stack.ss_sp +
                              ucp->uc_stack.ss_size);
  sp -= argc < 8 ? 0 : argc - 8;
  sp = (libucontext_greg_t *)(((uintptr_t)sp & -16L));

  /* set up the ucontext structure */
  ucp->uc_mcontext.__gregs[REG_RA] = (libucontext_greg_t)libucontext_trampoline;
  ucp->uc_mcontext.__gregs[REG_S0] = 0;
  ucp->uc_mcontext.__gregs[REG_S1] = (libucontext_greg_t)ucp->uc_link;
  ucp->uc_mcontext.__gregs[REG_SP] = (libucontext_greg_t)sp;
  ucp->uc_mcontext.__gregs[REG_PC] = (libucontext_greg_t)func;

  /* first 8 args go in $a0 through $a7. */
  regp = &(ucp->uc_mcontext.__gregs[REG_A0]);

  for (i = 0; (i < argc && i < 8); i++) {
    *regp++ = va_arg(args, libucontext_greg_t);
  }

  /* remainder overflows into stack */
  for (; i < argc; i++) {
    *sp++ = va_arg(args, libucontext_greg_t);
  }
}
