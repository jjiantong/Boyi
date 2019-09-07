#include "common.h"
#include <math.h>

inline int compare_output(int *outp, int *outpCPU, int size) {
    double sum_delta2, sum_ref2, L1norm2;
    sum_delta2 = 0;
    sum_ref2   = 0;
    L1norm2    = 0;
    for(int i = 0; i < size; i++) {
        sum_delta2 += std::abs(outp[i] - outpCPU[i]);
        sum_ref2 += std::abs(outpCPU[i]);
    }
    if(sum_ref2 == 0)
        sum_ref2 = 1; //In case percent=0
    L1norm2      = (double)(sum_delta2 / sum_ref2);
    if(L1norm2 >= 1e-6){
        printf("Test failed\n");
        exit(EXIT_FAILURE);
    }
    return 0;
}

// Sequential implementation for comparison purposes
inline double cpu_streamcompaction(int *input, int size, int value) {
    //struct timeval t1, t2;
    double t1,t2;

	int            pos = 0;
    // start timer
    //gettimeofday(&t1, NULL);
    t1 = getCurrentTimestamp();
	for(int my = 0; my < size; my++) {
        if(input[my] != value) {
            input[pos] = input[my];
            pos++;
        }
    }
    // end timer
    //gettimeofday(&t2, NULL);
	t2 = getCurrentTimestamp();
    
	//double timer = (t2.tv_sec - t1.tv_sec) * 1000000.0 + (t2.tv_usec - t1.tv_usec);
    double timer = t2 - t1;
	//printf("Execute time: %f us\n", timer);
    return timer;
}

inline void verify(int *input, int *input_array, int size, int value, int size_compact) {
    cpu_streamcompaction(input_array, size, value);
    compare_output(input, input_array, size_compact);
}
