#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel unsigned int chan[16] __attribute__((depth(64)));
	channel unsigned int chan_out[16];


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global uint *data) {

	uint size2 = size >> 4;

    for(int i = 0; i < size2; i ++) {

		uint16 data_uint16 = ((__global uint16*)data)[i];
    
		uint p_data[16];
		p_data[0] = data_uint16.s0;
		p_data[1] = data_uint16.s1;
		p_data[2] = data_uint16.s2;
		p_data[3] = data_uint16.s3;
		p_data[4] = data_uint16.s4;
		p_data[5] = data_uint16.s5;
		p_data[6] = data_uint16.s6;
		p_data[7] = data_uint16.s7;
		p_data[8] = data_uint16.s8;
		p_data[9] = data_uint16.s9;
		p_data[10] = data_uint16.sA;
		p_data[11] = data_uint16.sB;
		p_data[12] = data_uint16.sC;
		p_data[13] = data_uint16.sD;
		p_data[14] = data_uint16.sE;
		p_data[15] = data_uint16.sF;

        write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
        write_channel_altera(chan[2], p_data[2]);
		write_channel_altera(chan[3], p_data[3]);
		write_channel_altera(chan[4], p_data[4]);
		write_channel_altera(chan[5], p_data[5]);
        write_channel_altera(chan[6], p_data[6]);
		write_channel_altera(chan[7], p_data[7]);
        write_channel_altera(chan[8], p_data[8]);
		write_channel_altera(chan[9], p_data[9]);
        write_channel_altera(chan[10], p_data[10]);
		write_channel_altera(chan[11], p_data[11]);
		write_channel_altera(chan[12], p_data[12]);
		write_channel_altera(chan[13], p_data[13]);
        write_channel_altera(chan[14], p_data[14]);
		write_channel_altera(chan[15], p_data[15]);
    }
}


__kernel 
void Histogram_0(unsigned int size, unsigned int bins) {
    
    unsigned int l_histo_0[256];
	unsigned int l_histo_1[256];
	unsigned int l_histo_2[256];
	unsigned int l_histo_3[256];
	unsigned int l_histo_4[256];
	unsigned int l_histo_5[256];
	unsigned int l_histo_6[256];
	unsigned int l_histo_7[256];
	unsigned int l_histo_8[256];
	unsigned int l_histo_9[256];
	unsigned int l_histo_10[256];
	unsigned int l_histo_11[256];
	unsigned int l_histo_12[256];
	unsigned int l_histo_13[256];
	unsigned int l_histo_14[256];
	unsigned int l_histo_15[256];

    for(int pos = 0; pos < bins; pos++) {
        l_histo_0[pos] = 0;
		l_histo_1[pos] = 0;
		l_histo_2[pos] = 0;
		l_histo_3[pos] = 0;
		l_histo_4[pos] = 0;
		l_histo_5[pos] = 0;
		l_histo_6[pos] = 0;
		l_histo_7[pos] = 0;
		l_histo_8[pos] = 0;
		l_histo_9[pos] = 0;
		l_histo_10[pos] = 0;
		l_histo_11[pos] = 0;
		l_histo_12[pos] = 0;
		l_histo_13[pos] = 0;
		l_histo_14[pos] = 0;
		l_histo_15[pos] = 0;
    }

	uint size2 = size >> 4;
    for(int i = 0; i < size2; i ++) {
    
        unsigned int d0 = read_channel_altera(chan[0]);
		unsigned int d1 = read_channel_altera(chan[1]);
		unsigned int d2 = read_channel_altera(chan[2]);
		unsigned int d3 = read_channel_altera(chan[3]);
		unsigned int d4 = read_channel_altera(chan[4]);
		unsigned int d5 = read_channel_altera(chan[5]);
		unsigned int d6 = read_channel_altera(chan[6]);
		unsigned int d7 = read_channel_altera(chan[7]);
		unsigned int d8 = read_channel_altera(chan[8]);
		unsigned int d9 = read_channel_altera(chan[9]);
		unsigned int d10 = read_channel_altera(chan[10]);
		unsigned int d11 = read_channel_altera(chan[11]);
		unsigned int d12 = read_channel_altera(chan[12]);
		unsigned int d13 = read_channel_altera(chan[13]);
		unsigned int d14 = read_channel_altera(chan[14]);
		unsigned int d15 = read_channel_altera(chan[15]);
        l_histo_0[((d0 * bins) >> 12)]++;
		l_histo_1[((d1 * bins) >> 12)]++;
		l_histo_2[((d2 * bins) >> 12)]++;
		l_histo_3[((d3 * bins) >> 12)]++;
		l_histo_4[((d4 * bins) >> 12)]++;
		l_histo_5[((d5 * bins) >> 12)]++;
		l_histo_6[((d6 * bins) >> 12)]++;
		l_histo_7[((d7 * bins) >> 12)]++;
		l_histo_8[((d8 * bins) >> 12)]++;
		l_histo_9[((d9 * bins) >> 12)]++;
		l_histo_10[((d10 * bins) >> 12)]++;
		l_histo_11[((d11 * bins) >> 12)]++;
		l_histo_12[((d12 * bins) >> 12)]++;
		l_histo_13[((d13 * bins) >> 12)]++;
		l_histo_14[((d14 * bins) >> 12)]++;
		l_histo_15[((d15 * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        write_channel_altera(chan_out[0], l_histo_0[pos]);
		write_channel_altera(chan_out[1], l_histo_1[pos]);
		write_channel_altera(chan_out[2], l_histo_2[pos]);
		write_channel_altera(chan_out[3], l_histo_3[pos]);
		write_channel_altera(chan_out[4], l_histo_4[pos]);
		write_channel_altera(chan_out[5], l_histo_5[pos]);
		write_channel_altera(chan_out[6], l_histo_6[pos]);
		write_channel_altera(chan_out[7], l_histo_7[pos]);
		write_channel_altera(chan_out[8], l_histo_8[pos]);
		write_channel_altera(chan_out[9], l_histo_9[pos]);
		write_channel_altera(chan_out[10], l_histo_10[pos]);
		write_channel_altera(chan_out[11], l_histo_11[pos]);
		write_channel_altera(chan_out[12], l_histo_12[pos]);
		write_channel_altera(chan_out[13], l_histo_13[pos]);
		write_channel_altera(chan_out[14], l_histo_14[pos]);
		write_channel_altera(chan_out[15], l_histo_15[pos]);
    }
}

__kernel 
void Histogram_out(unsigned int bins, __global unsigned int *histo ) {
    
    for(int pos = 0; pos < bins; pos++) {
		unsigned int l_histo_0 = read_channel_altera(chan_out[0]);
		unsigned int l_histo_1 = read_channel_altera(chan_out[1]);
		unsigned int l_histo_2 = read_channel_altera(chan_out[2]);
		unsigned int l_histo_3 = read_channel_altera(chan_out[3]);
		unsigned int l_histo_4 = read_channel_altera(chan_out[4]);
		unsigned int l_histo_5 = read_channel_altera(chan_out[5]);
		unsigned int l_histo_6 = read_channel_altera(chan_out[6]);
		unsigned int l_histo_7 = read_channel_altera(chan_out[7]);
		unsigned int l_histo_8 = read_channel_altera(chan_out[8]);
		unsigned int l_histo_9 = read_channel_altera(chan_out[9]);
		unsigned int l_histo_10 = read_channel_altera(chan_out[10]);
		unsigned int l_histo_11 = read_channel_altera(chan_out[11]);
		unsigned int l_histo_12 = read_channel_altera(chan_out[12]);
		unsigned int l_histo_13 = read_channel_altera(chan_out[13]);
		unsigned int l_histo_14 = read_channel_altera(chan_out[14]);
		unsigned int l_histo_15 = read_channel_altera(chan_out[15]);
        histo[pos] += l_histo_0 + l_histo_1 +
					l_histo_2 + l_histo_3 +
					l_histo_4 + l_histo_5 +
					l_histo_6 + l_histo_7 +
					l_histo_8 + l_histo_9 +
					l_histo_10 + l_histo_11 +
					l_histo_12 + l_histo_13 +
					l_histo_14 + l_histo_15;
    }
}