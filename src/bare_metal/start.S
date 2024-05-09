#include "defines.h"
.extern main
.section .init
.globl _start
.type _start,@function


_start:
  .cfi_startproc
  .cfi_undefined ra
.option push
.option norelax
la gp, __global_pointer$
.option pop
  // Load _stack_top into sp
  la sp, _stack_top
  li t0, 0
  andi sp, sp, -16
  csrr a0, mhartid
  beq a0, t0, _primary
  la t1, STACK_SIZE
  jal _stack_setup

	.cfi_endproc // We end the proccess

_primary:
  add s0, sp, zero

  // argc, argv, envp is 0 and jump to main
  li  a0, 0
  li  a1, 0
  li  a2, 0
  jal main


_stack_setup:
  // add one to variable we compare
  addi t0, t0, 1
  // add STACK_SIZE to stack pointer
  add sp, sp, t1
  // align to 16 bytes
  andi sp, sp, -16
  // branch if we are now at correct hartid
  beq a0, t0, _secondary
  jal _stack_setup


_secondary:
  add s0, sp, zero

  // argc, argv, envp is 0 and jump to main
  li  a0, 0
  li  a1, 0
  li  a2, 0
  jal secondary_main


