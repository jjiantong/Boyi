#ifndef _COMMON_H_
#define _COMMON_H_

#define PRINT 0
#define PRINT_ALL 0

#define INF -2147483647
#define UP_LIMIT 16677216 //2^24
#define WHITE 16677217
#define GRAY 16677218
#define GRAY0 16677219
#define GRAY1 16677220
#define BLACK 16677221
#define W_QUEUE_SIZE 1600

typedef struct {
    int x;
    int y;
} Node;
typedef struct {
    int x;
    int y;
} Edge;

#endif
