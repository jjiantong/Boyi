#define _OPENCL_COMPILER_

#include "support/common.h"

	channel uint16 chan;
	channel uint16 chan_out;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,
    unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 4;

	for(int i = 0; i < size2; i ++) {

		uint16 data_uint16 = ((__global uint16*)data)[i];
		
		write_channel_altera(chan, data_uint16);
	}
}

__kernel 
void TQHistogram_0(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram_0[256];
	int histogram_1[256];
	int histogram_2[256];
	int histogram_3[256];
	int histogram_4[256];
	int histogram_5[256];
	int histogram_6[256];
	int histogram_7[256];
	int histogram_8[256];
	int histogram_9[256];
	int histogram_10[256];
	int histogram_11[256];
	int histogram_12[256];
	int histogram_13[256];
	int histogram_14[256];
	int histogram_15[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram_0[j] = 0;
			histogram_1[j] = 0;
			histogram_2[j] = 0;
			histogram_3[j] = 0;
			histogram_4[j] = 0;
			histogram_5[j] = 0;
			histogram_6[j] = 0;
			histogram_7[j] = 0;
			histogram_8[j] = 0;
			histogram_9[j] = 0;
			histogram_10[j] = 0;
			histogram_11[j] = 0;
			histogram_12[j] = 0;
			histogram_13[j] = 0;
			histogram_14[j] = 0;
			histogram_15[j] = 0;
		}

		uint size2 = frame_size >> 4;
		for(int j = 0; j < size2; j++) {
            uint16 d = read_channel_altera(chan);
			int d0 = d.s0;
			int d1 = d.s1;
			int d2 = d.s2;
			int d3 = d.s3;
			int d4 = d.s4;
			int d5 = d.s5;
			int d6 = d.s6;
			int d7 = d.s7;
            int d8 = d.s8;
			int d9 = d.s9;
			int d10 = d.sA;
			int d11 = d.sB;
			int d12 = d.sC;
			int d13 = d.sD;
			int d14 = d.sE;
			int d15 = d.sF;
			int value0 = (d0 * n_bins) >> 8;
			int value1 = (d1 * n_bins) >> 8;
			int value2 = (d2 * n_bins) >> 8;
			int value3 = (d3 * n_bins) >> 8;
			int value4 = (d4 * n_bins) >> 8;
			int value5 = (d5 * n_bins) >> 8;
			int value6 = (d6 * n_bins) >> 8;
			int value7 = (d7 * n_bins) >> 8;
            int value8 = (d8 * n_bins) >> 8;
			int value9 = (d9 * n_bins) >> 8;
			int value10 = (d10 * n_bins) >> 8;
			int value11 = (d11 * n_bins) >> 8;
			int value12 = (d12 * n_bins) >> 8;
			int value13 = (d13 * n_bins) >> 8;
			int value14 = (d14 * n_bins) >> 8;
			int value15 = (d15 * n_bins) >> 8;
			histogram_0[value0]++;
			histogram_1[value1]++;
			histogram_2[value2]++;
			histogram_3[value3]++;
			histogram_4[value4]++;
			histogram_5[value5]++;
			histogram_6[value6]++;
			histogram_7[value7]++;
			histogram_8[value8]++;
			histogram_9[value9]++;
			histogram_10[value10]++;
			histogram_11[value11]++;
			histogram_12[value12]++;
			histogram_13[value13]++;
			histogram_14[value14]++;
			histogram_15[value15]++;
		}

		uint16 histo[256];
		for(int j = 0; j < n_bins; j++) {
			histo[j].s0 = histogram_0[j];
			histo[j].s1 = histogram_1[j];
			histo[j].s2 = histogram_2[j];
			histo[j].s3 = histogram_3[j];
			histo[j].s4 = histogram_4[j];
			histo[j].s5 = histogram_5[j];
			histo[j].s6 = histogram_6[j];
			histo[j].s7 = histogram_7[j];
			histo[j].s8 = histogram_8[j];
			histo[j].s9 = histogram_9[j];
			histo[j].sA = histogram_10[j];
			histo[j].sB = histogram_11[j];
			histo[j].sC = histogram_12[j];
			histo[j].sD = histogram_13[j];
			histo[j].sE = histogram_14[j];
			histo[j].sF = histogram_15[j];
			write_channel_altera(chan_out, histo[j]);
		}
    }
}


__kernel 
void TQHistogram_out(__global int *histo, unsigned int gpuQueueSize, unsigned int n_bins) {

	for(int i = 0; i < gpuQueueSize; ++i){
		for(int j = 0; j < n_bins; j++){
            uint16 h = read_channel_altera(chan_out);
			histo[i * n_bins + j] = h.s0 + h.s1 + h.s2 + h.s3 + h.s4 + h.s5 + h.s6 + h.s7
                                  + h.s8 + h.s9 + h.sA + h.sB + h.sC + h.sD + h.sE + h.sF;
		}
	}		
}
