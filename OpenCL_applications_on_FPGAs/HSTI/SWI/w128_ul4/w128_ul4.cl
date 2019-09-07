#define _OPENCL_COMPILER_
#define W 128

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_kernel(int size, int bins, float alpha, __global unsigned int *data,
    __global unsigned int *histo ) {
    
    unsigned int l_histo[256];
	unsigned int l_data[W];
    
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

    for(int k = 0; k < size / W; k ++) {
		
		#pragma unroll 4
		for(int i = 0; i < W; i ++)
			l_data[i] = data[k * W + i];
		
		for(int i = 0; i < W; i ++) {
			int value = (l_data[i] * bins) >> 12;
			l_histo[value]++;
		}
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] += l_histo[pos];
    }
}
