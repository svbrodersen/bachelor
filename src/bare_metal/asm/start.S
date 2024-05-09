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
  // atomically read the current machine hardware thread id, and load the primary hardware thread id
  csrr a0, mhartid
  li a1, 0
  // if a0 is not equal a1 then go to secondary
  bne a0, a1, secondary

  // load _stack_top into the sp register
  la sp, _stack_top
  add s0, sp, zero

  // argc, argv, envp is 0 and jump to main
  li  a0, 0
  li  a1, 0
  li  a2, 0
  jal main


secondary:
	// TODO: Multicore is not supported. We wait for interrupt, and then jump to secondary (making sure all threads are here)
	.cfi_endproc // We end the proccess

_secondary:
  wfi
  j _secondary
