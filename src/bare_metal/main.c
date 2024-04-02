#include "interrupt/ISR.h"
#include "print/uart.h"
#include <stdio.h>
#define LENGTH_LEFT 5
#define LENGTH_RIGHT 5

extern void riscv_IVT();

void merge(int lst1[], int lst2[], int res[]) {
  int p1 = 0, p2 = 0;
  for (int i = 0; i < (LENGTH_LEFT + LENGTH_RIGHT); i++) {
    if (p1 >= LENGTH_LEFT) {
      res[i] = lst2[p2];
      p2++;
    } else if (p2 >= LENGTH_RIGHT) {
      res[i] = lst1[p1];
      p1++;
    } else if (lst1[p1] < lst2[p2]) {
      res[i] = lst1[p1];
      p1++;
    } else {
      res[i] = lst2[p2];
      p2++;
    }
  }
}

int main() {
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
  set_interrupt_timer();
  while (1) {
    printf("Hello from main function\n");
    for (int i = 0; i < 30000000; i++)
      ;
  }
  return 0;
}
