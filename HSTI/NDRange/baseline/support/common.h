#ifndef _COMMON_H_
#define _COMMON_H_

#define ByteSwap16(n) (((((unsigned int)n) << 8) & 0xFF00) | ((((unsigned int)n) >> 8) & 0x00FF))

#define PRINT 0

#define divceil(n, m) (((n)-1) / (m) + 1)

#endif
