#define _OPENCL_COMPILER_

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_kernel(int size, int bins, __global unsigned int *data,
    __global unsigned int *histo ) {
    
    unsigned int l_histo_0[256];
	unsigned int l_histo_1[256];
	unsigned int l_histo_2[256];
	unsigned int l_histo_3[256];
    
    for(int pos = 0; pos < bins; pos++) {
        l_histo_0[pos] = 0;
		l_histo_1[pos] = 0;
		l_histo_2[pos] = 0;
		l_histo_3[pos] = 0;
    }

    uint size2 = size >> 2;
    for(int i = 0; i < size2; i++) {
    
        uint4 data_uint4 = ((__global uint4*)data)[i];
        unsigned int d0 = data_uint4.s0;
		unsigned int d1 = data_uint4.s1;
		unsigned int d2 = data_uint4.s2;
		unsigned int d3 = data_uint4.s3;
        l_histo_0[((d0 * bins) >> 12)]++;
		l_histo_1[((d1 * bins) >> 12)]++;
		l_histo_2[((d2 * bins) >> 12)]++;
		l_histo_3[((d3 * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] = l_histo_0[pos] + l_histo_1[pos] +
					l_histo_2[pos] + l_histo_3[pos];
    }
}
