#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel unsigned int chan;


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global unsigned int *data) {

    for(int i = 0; i < size; i ++) {
    
        write_channel_altera(chan, data[i]);
    }
}


__kernel 
void Histogram_0(unsigned int size, unsigned int bins, __global unsigned int *histo) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

    for(int i = 0; i < size; i ++) {
    
        unsigned int d = read_channel_altera(chan);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] += l_histo[pos];
    }
}

