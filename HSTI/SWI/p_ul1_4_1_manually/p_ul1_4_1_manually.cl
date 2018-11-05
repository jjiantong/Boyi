#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_kernel(int size, int bins, float alpha, __global unsigned int *data,
    __global unsigned int *histo ) {
    
    unsigned int l_histo[256];
    
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

    for(int i = 0; i < size / 4; i++) {
    
        unsigned int d0 = data[i * 4];
		unsigned int d1 = data[i * 4 + 1];
		unsigned int d2 = data[i * 4 + 2];
		unsigned int d3 = data[i * 4 + 3];
        l_histo[((d0 * bins) >> 12)]++;
		l_histo[((d1 * bins) >> 12)]++;
		l_histo[((d2 * bins) >> 12)]++;
		l_histo[((d3 * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] += l_histo[pos];
    }
}
