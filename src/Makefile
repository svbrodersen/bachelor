CC = clang

all: main.elf
	@echo "Done"

main.elf: ./bare_metal/main.c ./bare_metal/start.S
	$(CC) -g -ffreestanding -nostartfile -nostdlib \
		-nodefaultlibs -target riscv32 ./bare_metal/start.S \
		./bare_metal/main.c -march=rv32imc_zicsr_zbb -o ./bare_metal/main.elf

qemu: main.elf
	qemu-system-riscv32 -nographic -machine virt -net none \
	-chardev stdio,id=con,mux=on -serial chardev:con \
	-mon chardev=con,mode=readline -bios none \
	-smp 4 -S -kernel ./bare_metal/main.elf

