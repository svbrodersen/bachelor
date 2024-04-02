OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
	/* Fake ROM area */
	ram (wxa) : ORIGIN = 0x80100000, LENGTH = 127M
  rom (rxa) : ORIGIN = 0x80000000, LENGTH = 1M
}

SECTIONS
{

.text : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.text .text.*)
	} >rom AT>rom

	.rodata : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.rdata)
		*(.rodata .rodata.*)
	} >rom AT>rom

	.data : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.data .data.*)
    /*RISCV convention to have __global_pointer aligned to 8 bytes*/
		. = ALIGN(8);
		PROVIDE( __global_pointer$ = . + 0x800 );
	} >ram AT>rom

	.bss : ALIGN(CONSTANT(MAXPAGESIZE))
	{
		*(.bss .bss.*)
	} >ram AT>rom

	_end = .;

	.stack : ALIGN(CONSTANT(MAXPAGESIZE))
	{
    /* It is standard to have the stack aligned to 16 bytes*/
		. = ALIGN(16);
		_stack_top = ORIGIN(ram) + LENGTH(ram);
	} >ram AT>ram
}
