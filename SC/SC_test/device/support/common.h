#ifndef _COMMON_H_
#define _COMMON_H_

//#define T int
#ifdef REGISTERS
#define REGS REGISTERS
#else
#define REGS 32
#endif

#define divceil(n, m) (((n)-1) / (m) + 1)

#endif
