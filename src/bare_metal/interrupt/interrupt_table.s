.balign 128, 0
.option norvc
.extern riscv_interrupt_handler
.global riscv_IVT
riscv_IVT:
IR_0: // Reserved
  j riscv_interrupt_handler

IR_1: // Supervisor software interrupt
  j riscv_interrupt_handler

IR_2: // Reserved
  j riscv_interrupt_handler

IR_3: // Machine software interrupt
  j riscv_interrupt_handler

IR_4: // Reserved
  j riscv_interrupt_handler

IR_5: // Supervisor timer interrupt
  j riscv_interrupt_handler

IR_6: // Reserved
  j riscv_interrupt_handler

IR_7: // Machine timer interrupt
  j riscv_interrupt_handler

IR_8: // Reserved
  j riscv_interrupt_handler

IR_9: // Supervisor external interrupt
  j riscv_interrupt_handler

IR_10: // Reserved
  j riscv_interrupt_handler

IR_11: // Machine external interrupt
  j riscv_interrupt_handler

IR_12: // Reserved
  j riscv_interrupt_handler

IR_13: // Reserved
  j riscv_interrupt_handler

IR_14: // Reserved
  j riscv_interrupt_handler

IR_15: // Reserved
  j riscv_interrupt_handler
