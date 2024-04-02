CC=clang
CFLAGS=-g -O0 -ffreestanding -nostartfiles
CFLAGS+=-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr
CFLAGS+=--sysroot=/opt/riscv/riscv64-unknown-elf/
LINKER_SCRIPT=./linker/ram.ld
START=./asm/start.S
INTERRUPT=./interrupt/interrupt_table.s
KERNEL=main.elf

QEMU=qemu-system-riscv32
QEMU_FLAGS=-machine virt -bios none
QEMU_FLAGS+=-nographic -kernel ./$(KERNEL)

OBJ = main.o ./print/printf-stdarg.o ./print/uart.o ./interrupt/ISR.o


all: $(OBJ)
	$(CC) $^ $(START) $(INTERRUPT) $(CFLAGS) -T $(LINKER_SCRIPT) -o $(KERNEL)

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

run: all
	$(QEMU) $(QEMU_FLAGS)

debug: all
	$(QEMU) -s -S $(QEMU_FLAGS)

%.s : %.c
	$(CC) -c $(CFLAGS) $< -S -o $@

clean:
	rm -vf $(OBJ)
	rm -vf ./$(KERNEL)

