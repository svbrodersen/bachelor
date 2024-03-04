cmake_minimum_required(VERSION 3.28)
project(
  BareMetalRISCV
  C ASM
)
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)

add_executable(
  main.elf start.S main.c
)
add_link_options(
  main.elf
  "-T./rom.ld"
)

set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_C_COMPILER "clang-18")
set(CMAKE_ASM_COMPILER "clang-18")
set(CMAKE_C_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr -T./rom.ld")
set(CMAKE_ASM_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr -T./rom.ld")
