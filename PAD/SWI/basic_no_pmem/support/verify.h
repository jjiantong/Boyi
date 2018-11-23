#include "common.h"
#include <math.h>

inline int compare_output(Taa *outp, Taa *outpCPU, int size) {
    double sum_delta2, sum_ref2, L1norm2;
    sum_delta2 = 0;
    sum_ref2   = 0;
    L1norm2    = 0;
    for(int i = 0; i < size; i++) {
        sum_delta2 += fabs(outp[i] - outpCPU[i]);
        sum_ref2 += fabs(outpCPU[i]);
    }
    L1norm2 = (double)(sum_delta2 / sum_ref2);
    if(L1norm2 >= 1e-6){
        printf("Test failed\n");
        exit(EXIT_FAILURE);
    }
    return 0;
}

// Sequential implementation for comparison purposes
inline double cpu_padding(Taa *matrix, int x_size, int y_size, int pad_size) {
    //struct timeval t1, t2;
	double t1, t2;

    // start timer
    //gettimeofday(&t1, NULL);
	t1 = getCurrentTimestamp();

    for(int my_y = y_size - 1; my_y >= 0; --my_y) {
        for(int my_x = pad_size - 1; my_x >= 0; --my_x) {
            if(my_x < x_size)
                matrix[my_y * pad_size + my_x] = matrix[my_y * x_size + my_x];
            else
                matrix[my_y * pad_size + my_x] = 0.0f;
        }
    }
    // end timer
    //gettimeofday(&t2, NULL);
	t2 = getCurrentTimestamp();
    
	
	//double timer = (t2.tv_sec - t1.tv_sec) * 1000000.0 + (t2.tv_usec - t1.tv_usec);
	double timer = t2 - t1;
    // compute bandwidth
    double bandwidth = 2 * x_size * y_size * sizeof(Taa) / (timer * 1000.0);
    return bandwidth;
}

inline void verify(Taa *in_out, Taa *in_backup, int n, int m, int n_pad) {
    cpu_padding(in_backup, n, m, n_pad);
    compare_output(in_out, in_backup, m * n_pad);
}
