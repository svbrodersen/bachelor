OUTPUT_ARCH("riscv")
ENTRY(_start)

MEMORY
{
	ram (wxa) : ORIGIN = 0x80100000, LENGTH = 127M
  rom (rxa) : ORIGIN = 0x80000000, LENGTH = 1M
}

SECTIONS
{
  .text :
	{
		*(.text .text.*)
	} > rom

	.rodata :
	{
		*(.rdata)
		*(.rodata .rodata.*)
	} > rom

	.data :
	{
		*(.data .data.*)
    /*RISCV convention to have __global_pointer aligned to 8 bytes*/
		. = ALIGN(4);
		PROVIDE( __global_pointer$ = . + GLOBAL_STACK_SIZE );
	} > ram

	.bss :
	{
		*(.bss .bss.*)
	} > ram

  /* It is standard to have
  the stack aligned to 16 bytes*/
	. = ALIGN(16);
	_end = .;

	.stack :
	{
    . = ALIGN(4);
    PROVIDE(_stack_start = .);
		PROVIDE(_stack_top = ORIGIN(ram) + LENGTH(ram));
	} > ram
}
