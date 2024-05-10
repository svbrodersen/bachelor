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
  // load _stack_top into the sp register
  la sp, _stack_top
  csrr a0, mhartid
  bnez a0, 2f
1:
  // argc, argv is 0 and jump to main
  li  a0, 0
  li  a1, 0
  jal main
1:
  // loop
  j 1b

2:
  csrr a0, mhartid
  la sp, _stack_top
  la t1, 2048
  li t0, 0
1:
  andi sp, sp, -16
  beq a0, t0, 1f
  sub sp, sp, t1
  addi t0, t0, 1
  j 1b
1:
  // argc, argv is 0 and jump to main
  li  a0, 0
  li  a1, 0
  jal secondary_main
1:
  // loop
  j 1b

	.cfi_endproc  // We should never really reach this
