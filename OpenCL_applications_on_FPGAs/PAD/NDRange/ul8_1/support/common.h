#ifndef _COMMON_H_
#define _COMMON_H_

#ifndef DOUBLE_PRECISION
#define DOUBLE_PRECISION 1
#endif

#if DOUBLE_PRECISION
#define Taa double
#else
#define Taa float
#endif

#ifdef REGISTERS
#define REGS REGISTERS
#else
#define REGS 32
#endif

#define divceil(n, m) (((n)-1) / (m) + 1)

#endif
