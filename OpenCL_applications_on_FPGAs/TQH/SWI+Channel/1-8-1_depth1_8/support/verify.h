#include "common.h"
#include <math.h>

inline void verify(int *histo, int *data, int poolSize, int frame_size, int n_bins) {
    int error = 0;
    for(int i = 0; i < poolSize; ++i) {
        //int histogram[n_bins];
		int *histogram = (int*)malloc(sizeof(int) * n_bins);

        for(int j = 0; j < n_bins; j++) {
            histogram[j] = 0;
        }
        for(int j = 0; j < frame_size; j++) {
            histogram[(data[i * frame_size + j] * n_bins) >> 8]++;
        }
        for(int j = 0; j < n_bins; j++) {
            if(histogram[j] != histo[i * n_bins + j])
                ++error;
        }
    }
    if(error != 0) {
		printf("\n%d",error);
        printf("\nTest failed\n");
        //exit(EXIT_FAILURE);
    }
}
