OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
	ram (wxa) : ORIGIN = 0x81000000, LENGTH = 127M
  rom (rxa) : ORIGIN = 0x80000000, LENGTH = 1M
}

SECTIONS
{
.text : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.text .text.*)
	}

	.rodata : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.rdata)
		*(.rodata .rodata.*)
	}

	.data : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.data .data.*)
    /*RISCV convention to have __global_pointer aligned to 8 bytes*/
		. = ALIGN(8);
		PROVIDE( __global_pointer$ = . + 0x800 );
	}

	.bss : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.bss .bss.*)
	}

  /* It is standard to have
  the stack aligned to 16 bytes*/
	. = ALIGN(16);
	_end = .;

	.stack : ALIGN(CONSTANT(MAXPAGESIZE))
	{
    . = ALIGN(8);
    PROVIDE(_stack_start = . + 0x800);
		PROVIDE(_stack_top = ORIGIN(ram) + LENGTH(ram));
	}
}
