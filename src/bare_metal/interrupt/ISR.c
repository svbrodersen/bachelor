#include "ISR.h"
#include <stdint.h>
#include <stdio.h>

extern void riscv_IVT();

void init_interrupts() {
  __asm__ volatile("csrw mtvec, %0" ::"r"((uintptr_t)riscv_IVT | 0x1));
  __asm__ volatile(
      // first reset mstatus register
      "li t0, 0x00001800\n"
      "csrc mstatus, t0\n"
      // then set bit 11-12 to 11 (indicating previous privilege is machine),
      // and set bit 3 to 1(indicating that machine interrupts should be on)
      "li t0, 0x00001808\n"
      "csrs mstatus, t0\n"
      // set mie to enabled for machine interrupt timer
      "li t0, 0x00000080\n"
      "csrs mie, t0");
}

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

void do_nothing() {
  while (1) {
    for (int i = 0; i < 10000; i++) {
    }
  }
}

__attribute__((interrupt)) void riscv_interrupt_handler(void) {
  printf("Hello from interrupt handler\n");
}
