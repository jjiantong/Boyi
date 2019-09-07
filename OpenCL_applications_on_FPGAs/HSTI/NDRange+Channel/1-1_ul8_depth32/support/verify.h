#include "common.h"
#include <math.h>
#include <string.h>

inline int compare_output(unsigned int *outp, unsigned int *outpCPU, int bins) {
    for(int i = 0; i < bins; i++) {
		//printf("\n%d,%d\n",outp[i],outpCPU[i]);
        if(outp[i] != outpCPU[i]) {
            printf("Test failed!!!!!!\n");
            exit(EXIT_FAILURE);
        }
    }
    return 0;
}

// Sequential implementation for comparison purposes
inline void HistogramCPU(unsigned int *histo, unsigned int *data, int size, int bins) {
    for(int i = 0; i < size; i++) {
        // Read pixel
        unsigned int d = ((data[i] * bins) >> 12);
        // Vote in histogram
        histo[d]++;
    }
}

inline void verify(unsigned int *histo, unsigned int *input, int size, int bins) {
    unsigned int *gold = (unsigned int *)malloc(bins * sizeof(unsigned int));
    memset(gold, 0, bins * sizeof(unsigned int));
    HistogramCPU(gold, input, size, bins);
    compare_output(histo, gold, bins);
    free(gold);
}
