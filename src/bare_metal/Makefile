CC=clang
NUM_CORES=16
CFLAGS=-g -O0 -ffreestanding -nostartfiles
CFLAGS+=-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr
CFLAGS+=--sysroot=/opt/llvm-riscv/riscv32-unknown-elf/ -v
LINKER_SCRIPT=./linker/ram.ld
KERNEL=main.elf

QEMU=qemu-system-riscv32
QEMU_FLAGS=-machine virt
QEMU_FLAGS+=-nographic
EXTRA_QEMU_FLAGS=  -smp $(NUM_CORES)
NUM_RANGE := $(shell seq 0 $(shell echo ${NUM_CORES}-1 | bc))
EXTRA_QEMU_FLAGS+= $(foreach N, $(NUM_RANGE), -device loader,file=./$(KERNEL),cpu-num=$N)
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
	$(QEMU) -s -S $(QEMU_FLAGS) $(EXTRA_QEMU_FLAGS)

debug_single: all
	$(QEMU) -s -S $(QEMU_FLAGS) -smp 1 -device loader,file=./$(KERNEL),cpu-num=0
%.s : %.c
	$(CC) -c $(CFLAGS) $< -S -o $@

clean:
	rm -vf $(OBJS)

