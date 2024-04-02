#include "ISR.h"
#include <stdint.h>
#include <stdio.h>

void set_interrupt_timer() {
  asm volatile(
      // enable interrupts some time in the future
      "rdtime t0\n"
      "li t1, %0\n"
      "add t2, t0, t1\n"
      // address of the CLINT machine timer in QEMU
      "li t0, 0x2004000\n"
      "sw t2, 0(t0)"
      :
      : "i"(TIME_QUANTANT));
}

__attribute__((interrupt)) void riscv_interrupt_handler(void) {
  printf("Hello from interrupt handler\n");
  set_interrupt_timer();
}
