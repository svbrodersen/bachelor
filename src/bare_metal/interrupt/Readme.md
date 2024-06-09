Interrupts could be another method of loading the binary elf file onto the QEMU
system. This would make it such that it loads in the same manner as the Linux
kernel, where one core "wakes" the other cores up. However, I was having issues
with this approach, so this folder is not needed for anything, but left in case
it might be preferred.
