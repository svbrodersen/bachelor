cmake_minimum_required(VERSION 3.28)
project(
  BareMetalRISCV
  C ASM
)
include(CTest)
include_directories(../Source/include)
include_directories(../Source/portable/GCC/RISC-V/)
include_directories(.)
add_library(
  freeRTOS
  ../Source/tasks.c
  ../Source/queue.c
  ../Source/list.c
  ../Source/portable/GCC/RISC-V/port.c
  ../Source/portable/MemMang/heap_4.c
)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR riscv)
set(CMAKE_VERBOSE_MAKEFILE true)
set(CMAKE_C_COMPILER "clang-18")
set(CMAKE_ASM_COMPILER "clang-18")
set(CMAKE_C_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr -T ./ram.ld \
--sysroot=/opt/riscv/riscv64-unknown-elf/ --gcc-toolchain=/opt/riscv -v \
-fuse-ld=lld")
set(CMAKE_ASM_FLAGS "-g -O0 -ffreestanding -nostartfiles \
-nostdlib -nodefaultlibs --target=riscv32 -march=rv32imac_zicsr -T ./ram.ld \
--sysroot=/opt/riscv/riscv64-unknown-elf/ --gcc-toolchain=/opt/riscv -v \
-fuse-ld=lld")

add_executable(
  main.elf start.S main.c
)
target_link_libraries(main.elf freeRTOS)


add_test(
  NAME qemu
  COMMAND qemu-system-riscv32 -nographic -machine virt -net none
          -chardev stdio,id=con,mux=on -serial chardev:con
          -mon chardev=con,mode=readline -bios none
          -smp 4 -s -S -kernel ./main.elf
  BUILD ${CMAKE_BINARY_DIR}
  TARGET main.elf
)
