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
  // uart_init();
  // int lst1[LENGTH_LEFT] = {1, 4, 5, 7, 9};
  // int lst2[LENGTH_RIGHT] = {2, 3, 6, 8, 10};
  // int res[10];
  // merge(lst1, lst2, res);
  // char *ptr = "Hello world!";
  // char *np = 0;
  int i = 5;
  // unsigned int bs = sizeof(int) * 8;
  // int mi;
  // char buf[80];
  //
  // mi = (1 << (bs - 1)) + 1;
  // printf("%s\n", ptr);
  // printf("printf test\n");
  // printf("%s is null pointer\n", np);
  printf("%d = 5\n", i);
  // printf("%d = - max int\n", mi);
  // printf("char %c = 'a'\n", 'a');
  // printf("hex %x = ff\n", 0xff);
  // printf("hex %02x = 00\n", 0);
  // printf("signed %d = unsigned %u = hex %x\n", -3, -3, -3);
  // printf("%d %s(s)%", 0, "message");
  // printf("\n");
  // printf("%d %s(s) with %%\n", 0, "message");
  // sprintf(buf, "justif: \"%-10s\"\n", "left");
  // printf("%s", buf);
  // sprintf(buf, "justif: \"%10s\"\n", "right");
  // printf("%s", buf);
  // sprintf(buf, " 3: %04d zero padded\n", 3);
  // printf("%s", buf);
  // sprintf(buf, " 3: %-4d left justif.\n", 3);
  // printf("%s", buf);
  // sprintf(buf, " 3: %4d right justif.\n", 3);
  // printf("%s", buf);
  // sprintf(buf, "-3: %04d zero padded\n", -3);
  // printf("%s", buf);
  // sprintf(buf, "-3: %-4d left justif.\n", -3);
  // printf("%s", buf);
  // sprintf(buf, "-3: %4d right justif.\n", -3);
  // printf("%s", buf);
  /* Setup the mtvec to point to the interrupt handler. csrw is a pseudo
   instruction*/
  __asm__ volatile("csrw mtvec, %0" ::"r"((uintptr_t)riscv_IVT | 0x1));
  // trap into the interrupt handler
  int a = 10;
  for (int i = 0; i < 10; i++) {
    printf("%d", a / i);
  }
  return 0;
}
