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
target_link_options(
  main.elf
  PUBLIC  "-T./ram.ld"
)

set(CMAKE_SHARED_LINKER_FLAGS "-T ./ram.ld")
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_SYSTEM_PROCESSOR riscv)
set(CMAKE_C_COMPILER "clang")
set(CMAKE_ASM_COMPILER "clang")
set(CMAKE_C_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs -target riscv32 -arch MC_Zbb_Zicsr")
set(CMAKE_ASM_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs -target riscv32 -arch MC_Zbb_Zicsr")
