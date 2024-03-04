OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
	/* Fake ROM area */
	RAM (wxa) : ORIGIN = 0x80000000, LENGTH = 128M
}

SECTIONS {
  PROVIDE(_stack_top = ORIGIN(RAM) + LENGTH(RAM));
}
