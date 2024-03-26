file main.elf
target remote localhost:1234
set arch riscv:rv32
maintenance flush register-cache
load
break main

