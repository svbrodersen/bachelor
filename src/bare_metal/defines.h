#define STACK_SIZE 2048
#define smp_pause(reg1, reg2)                                                  \
  li reg2, 0x8;                                                                \
  csrw mie, reg2;                                                              \
  csrr reg2, mhartid;                                                          \
  bnez reg2, 42f
