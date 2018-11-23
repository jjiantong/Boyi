#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel uint16 chan;
	channel uint16 chan_out;


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global uint *data) {

	uint size2 = size >> 4;

    for(int i = 0; i < size2; i ++) {

		uint16 data_uint16 = ((__global uint16*)data)[i];
        write_channel_altera(chan, data_uint16);
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
    
        uint16 data = read_channel_altera(chan);
        unsigned int d0 = data.s0;
		unsigned int d1 = data.s1;
		unsigned int d2 = data.s2;
		unsigned int d3 = data.s3;
		unsigned int d4 = data.s4;
		unsigned int d5 = data.s5;
		unsigned int d6 = data.s6;
		unsigned int d7 = data.s7;
		unsigned int d8 = data.s8;
		unsigned int d9 = data.s9;
		unsigned int d10 = data.sA;
		unsigned int d11 = data.sB;
		unsigned int d12 = data.sC;
		unsigned int d13 = data.sD;
		unsigned int d14 = data.sE;
		unsigned int d15 = data.sF;
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

        uint16 histo;
        histo.s0 = l_histo_0[pos];
        histo.s1 = l_histo_1[pos];
        histo.s2 = l_histo_2[pos];
        histo.s3 = l_histo_3[pos];
        histo.s4 = l_histo_4[pos];
        histo.s5 = l_histo_5[pos];
        histo.s6 = l_histo_6[pos];
        histo.s7 = l_histo_7[pos];
        histo.s8 = l_histo_8[pos];
        histo.s9 = l_histo_9[pos];
        histo.sA = l_histo_10[pos];
        histo.sB = l_histo_11[pos];
        histo.sC = l_histo_12[pos];
        histo.sD = l_histo_13[pos];
        histo.sE = l_histo_14[pos];
        histo.sF = l_histo_15[pos];
        write_channel_altera(chan_out, histo);
    }
}

__kernel 
void Histogram_out(unsigned int bins, __global unsigned int *histo ) {
    
    for(int pos = 0; pos < bins; pos++) {
        uint16 l_histo = read_channel_altera(chan_out);
        histo[pos] += l_histo.s0 + l_histo.s1 +
					  l_histo.s2 + l_histo.s3 +
					  l_histo.s4 + l_histo.s5 +
					  l_histo.s6 + l_histo.s7 +
					  l_histo.s8 + l_histo.s9 +
					  l_histo.sA + l_histo.sB +
					  l_histo.sC + l_histo.sD +
					  l_histo.sE + l_histo.sF;
    }
}