#include "interrupt/ISR.h"
#include "kernel/kernel.h"
#include "print/uart.h"
#include <stdio.h>
#define LENGTH_LEFT 5
#define LENGTH_RIGHT 5

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
  // init_interrupts();
  // set_interrupt_timer();
  riscv_kernel();
  return 0;
}
