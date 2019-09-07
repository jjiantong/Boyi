#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel unsigned int chan[2];
	channel unsigned int chan_out[1];


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global uint *data) {

	uint size2 = size >> 1;

    for(int i = 0; i < size2; i ++) {

		uint2 data_uint2 = ((__global uint2*)data)[i];
    
		uint p_data[2];
		p_data[0] = data_uint2.s0;
		p_data[1] = data_uint2.s1;

        write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
    }
}


__kernel 
void Histogram_0(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 1;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[0]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[0], l_histo[pos]);
    }
}

__kernel 
void Histogram_1(unsigned int size, unsigned int bins, __global unsigned int *histo) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 1;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[1]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
		unsigned int h0 = read_channel_altera(chan_out[0]);
		histo[pos] += l_histo[pos] + h0;
    }
}
