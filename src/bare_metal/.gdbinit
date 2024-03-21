target remote localhost:1234
set arch riscv:rv32
maintenance flush register-cache
file ./main.elf
load
break main

