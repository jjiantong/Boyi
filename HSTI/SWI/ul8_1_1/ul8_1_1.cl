#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
#include "support/partitioner.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_kernel(int size, int bins, float alpha, __global unsigned int *data,
    __global unsigned int *histo ) {
    
    unsigned int l_histo[256];
	Partitioner p = partitioner_create(size, alpha);

	#pragma unroll 8
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

    for(int i = gpu_first(&p); gpu_more(&p); i = gpu_next(&p)) {
    
        unsigned int d = data[i];
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] += l_histo[pos];
    }
}
