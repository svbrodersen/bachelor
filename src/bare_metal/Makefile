CC=clang
CFLAGS=-g -O0 -ffreestanding -nostartfiles
CFLAGS+=-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr
CFLAGS+=--sysroot=/opt/riscv/riscv64-unknown-elf/
LINKER_SCRIPT=./linker/ram.ld
KERNEL=main.elf

QEMU=qemu-system-riscv32
QEMU_FLAGS=-machine virt -bios none -smp 8
QEMU_FLAGS+=-nographic -kernel ./$(KERNEL)

SOURCES = $(shell find -name '*.c')
SOURCES += $(shell find -name '*.S')
OBJS_c = $(SOURCES:%.c=%.o)
OBJS = $(OBJS_c:%.S=%.o)


all: $(OBJS)
	$(CC) $^ $(CFLAGS) -T $(LINKER_SCRIPT) -o $(KERNEL)

%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

%.o : %.S
	$(CC) -c $(CFLAGS) $< -o $@

run: all
	$(QEMU) $(QEMU_FLAGS)

debug: all
	$(QEMU) -s -S $(QEMU_FLAGS)

%.s : %.c
	$(CC) -c $(CFLAGS) $< -S -o $@

clean:
	rm -vf $(OBJS)

