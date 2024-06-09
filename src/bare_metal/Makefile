CC=clang
NUM_CORES=2
GLOBAL_STACK_SIZE=0x2640a00
THREAD_STACK_SIZE=0x2626200
CORE_STACK_SIZE=2048
CFLAGS=-g -O0 -ffreestanding -nostartfiles
CFLAGS+=-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr
CFLAGS+=--sysroot=/opt/riscv/riscv32-unknown-elf/
CFLAGS+=-DNUM_CORES=$(NUM_CORES)
CFLAGS+=-DTHREAD_STACK_SIZE=$(THREAD_STACK_SIZE)
CFLAGS+=-DSTACK_SIZE=$(CORE_STACK_SIZE)
CFLAGS+=-Wl,--defsym=GLOBAL_STACK_SIZE=$(GLOBAL_STACK_SIZE)
LINKER_SCRIPT=./linker/ram.ld
KERNEL=main.elf

QEMU=qemu-system-riscv32
QEMU_FLAGS=-machine virt -bios none
QEMU_FLAGS+=-nographic
QEMU_TEST_FLAGS= -chardev file,id=c1,path=test.txt,signal=off,server=off -serial chardev:c1
EXTRA_QEMU_FLAGS= -smp $(NUM_CORES)
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

test: all
	$(QEMU) $(QEMU_FLAGS) $(EXTRA_QEMU_FLAGS) $(QEMU_TEST_FLAGS)

%.s : %.c
	$(CC) -c $(CFLAGS) $< -S -o $@

clean:
	rm -vf $(OBJS)

