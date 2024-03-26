#include "uart.h"
#include <stdint.h>
#define LCR 0x03          // Line control register
#define LSR 0x05          // Line status register
#define FCR 0x02          // FIFO control reigster
#define RBR 0x00          // Receiver buffer register
#define IER 0x01          // Interrupt enable register
#define LSR_THRE 0b110000 //
void uart_init(void) {
  volatile uint8_t *ptr = (uint8_t *)UART_ADDR;

  // Set word length to 8 (LCR[1:0])
  *(ptr + LCR) = 0b11;

  // Enable FIFO (FCR[0])
  *(ptr + FCR) = 0b1;

  // Enable receiver buffer interrupts (IER[0])
  *(ptr + IER) = 0b1;
}

static void uart_put(uint8_t c) { *(uint8_t *)(UART_ADDR + RBR) = c; }
static uint8_t uart_get(uintptr_t addr) { return *(uint8_t *)(addr); }

void outbyte(unsigned char c) {
  volatile uintptr_t ptr = (uintptr_t)UART_ADDR;
  // make sure there is nothing else in FIFO
  while ((uart_get(ptr + LSR) & LSR_THRE) == 0) {
    // do nothing
  }
  // add the char to reciver buffer register
  uart_put(c);
}
