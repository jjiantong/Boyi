#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_kernel(int size, int bins, float alpha, __global unsigned int *data,
    __global unsigned int *histo ) {
    
    unsigned int l_histo[256];
    
    for(int pos = 0; pos < 256; pos++) {
        l_histo[pos] = 0;
    }

    #pragma unroll 1
    for(int i = 0; i < 157286400; i++) {
        unsigned int d = data[i];
        l_histo[((d * bins) >> 12)]++;
    }

    #pragma unroll 1
    for(int pos = 0; pos < 256; pos++) {
        histo[pos] += l_histo[pos];
    }
}




