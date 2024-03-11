# CMake generated Testfile for 
# Source directory: /home/simon/Programming/cs_econ/bachelor/src/bare_metal
# Build directory: /home/simon/Programming/cs_econ/bachelor/src/bare_metal
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[qemu]=] "qemu-system-riscv32" "-nographic" "-machine" "virt" "-net" "none" "-chardev" "stdio,id=con,mux=on" "-serial" "chardev:con" "-mon" "chardev=con,mode=readline" "-bios" "none" "-smp" "4" "-s" "-S" "-kernel" "./main.elf")
set_tests_properties([=[qemu]=] PROPERTIES  _BACKTRACE_TRIPLES "/home/simon/Programming/cs_econ/bachelor/src/bare_metal/CMakeLists.txt;28;add_test;/home/simon/Programming/cs_econ/bachelor/src/bare_metal/CMakeLists.txt;0;")
