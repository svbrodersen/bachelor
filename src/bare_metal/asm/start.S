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
  add s0, sp, zero

  // argc, argv, envp is 0 and jump to main
  li  a0, 0
  li  a1, 0
  li  a2, 0
  jal main
	.cfi_endproc // We end the proccess
