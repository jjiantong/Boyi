#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel unsigned int chan[8];
	channel unsigned int chan_out[7];


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global uint *data) {

	uint size2 = size >> 3;

    for(int i = 0; i < size2; i ++) {

		uint8 data_uint8 = ((__global uint8*)data)[i];
    
		uint p_data[8];
		p_data[0] = data_uint8.s0;
		p_data[1] = data_uint8.s1;
		p_data[2] = data_uint8.s2;
		p_data[3] = data_uint8.s3;
		p_data[4] = data_uint8.s4;
		p_data[5] = data_uint8.s5;
		p_data[6] = data_uint8.s6;
		p_data[7] = data_uint8.s7;

        write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
        write_channel_altera(chan[2], p_data[2]);
		write_channel_altera(chan[3], p_data[3]);
		write_channel_altera(chan[4], p_data[4]);
		write_channel_altera(chan[5], p_data[5]);
        write_channel_altera(chan[6], p_data[6]);
		write_channel_altera(chan[7], p_data[7]);
    }
}


__kernel 
void Histogram_0(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[0]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[0], l_histo[pos]);
    }
}

__kernel 
void Histogram_1(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[1]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[1], l_histo[pos]);
    }
}

__kernel 
void Histogram_2(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[2]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[2], l_histo[pos]);
    }
}

__kernel 
void Histogram_3(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[3]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[3], l_histo[pos]);
    }
}

__kernel 
void Histogram_4(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[4]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[4], l_histo[pos]);
    }
}

__kernel 
void Histogram_5(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[5]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[5], l_histo[pos]);
    }
}

__kernel 
void Histogram_6(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[6]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[6], l_histo[pos]);
    }
}


__kernel 
void Histogram_7(unsigned int size, unsigned int bins, __global unsigned int *histo) {
    
    unsigned int l_histo[256];
    for(int pos = 0; pos < bins; pos++) {
        l_histo[pos] = 0;
    }

	uint size2 = size >> 3;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d = read_channel_altera(chan[7]);
        l_histo[((d * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
		unsigned int h0 = read_channel_altera(chan_out[0]);
		unsigned int h1 = read_channel_altera(chan_out[1]);
		unsigned int h2 = read_channel_altera(chan_out[2]);
		unsigned int h3 = read_channel_altera(chan_out[3]);
		unsigned int h4 = read_channel_altera(chan_out[4]);
		unsigned int h5 = read_channel_altera(chan_out[5]);
		unsigned int h6 = read_channel_altera(chan_out[6]);
		histo[pos] += l_histo[pos] + h0 + h1 + h2 + h3 + h4 + h5 + h6;
    }
}
