#define _OPENCL_COMPILER_

#include "support/common.h"

	channel uint16 chan[2];
	channel uint16 chan_out[2];

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,
    unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 5;

	for(int i = 0; i < size2; i ++) {

		uint16 data_uint16_0 = ((__global uint16*)data)[i * 2];
        uint16 data_uint16_1 = ((__global uint16*)data)[i * 2 + 1];
		
		write_channel_altera(chan[0], data_uint16_0);
        write_channel_altera(chan[1], data_uint16_1);
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
    int histogram_16[256];
	int histogram_17[256];
	int histogram_18[256];
	int histogram_19[256];
	int histogram_20[256];
	int histogram_21[256];
	int histogram_22[256];
	int histogram_23[256];
	int histogram_24[256];
	int histogram_25[256];
	int histogram_26[256];
	int histogram_27[256];
	int histogram_28[256];
	int histogram_29[256];
	int histogram_30[256];
	int histogram_31[256];

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
            histogram_16[j] = 0;
			histogram_17[j] = 0;
			histogram_18[j] = 0;
			histogram_19[j] = 0;
			histogram_20[j] = 0;
			histogram_21[j] = 0;
			histogram_22[j] = 0;
			histogram_23[j] = 0;
			histogram_24[j] = 0;
			histogram_25[j] = 0;
			histogram_26[j] = 0;
			histogram_27[j] = 0;
			histogram_28[j] = 0;
			histogram_29[j] = 0;
			histogram_30[j] = 0;
			histogram_31[j] = 0;
		}

		uint size2 = frame_size >> 5;
		for(int j = 0; j < size2; j++) {
            uint16 d_0 = read_channel_altera(chan[0]);
            uint16 d_1 = read_channel_altera(chan[1]);
			int d0 = d_0.s0;
			int d1 = d_0.s1;
			int d2 = d_0.s2;
			int d3 = d_0.s3;
			int d4 = d_0.s4;
			int d5 = d_0.s5;
			int d6 = d_0.s6;
			int d7 = d_0.s7;
            int d8 = d_0.s8;
			int d9 = d_0.s9;
			int d10 = d_0.sA;
			int d11 = d_0.sB;
			int d12 = d_0.sC;
			int d13 = d_0.sD;
			int d14 = d_0.sE;
			int d15 = d_0.sF;
            int d16 = d_1.s0;
			int d17 = d_1.s1;
			int d18 = d_1.s2;
			int d19 = d_1.s3;
			int d20 = d_1.s4;
			int d21 = d_1.s5;
			int d22 = d_1.s6;
			int d23 = d_1.s7;
            int d24 = d_1.s8;
			int d25 = d_1.s9;
			int d26 = d_1.sA;
			int d27 = d_1.sB;
			int d28 = d_1.sC;
			int d29 = d_1.sD;
			int d30 = d_1.sE;
			int d31 = d_1.sF;
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
            int value16 = (d16 * n_bins) >> 8;
			int value17 = (d17 * n_bins) >> 8;
			int value18 = (d18 * n_bins) >> 8;
			int value19 = (d19 * n_bins) >> 8;
			int value20 = (d20 * n_bins) >> 8;
			int value21 = (d21 * n_bins) >> 8;
			int value22 = (d22 * n_bins) >> 8;
			int value23 = (d23 * n_bins) >> 8;
            int value24 = (d24 * n_bins) >> 8;
			int value25 = (d25 * n_bins) >> 8;
			int value26 = (d26 * n_bins) >> 8;
			int value27 = (d27 * n_bins) >> 8;
			int value28 = (d28 * n_bins) >> 8;
			int value29 = (d29 * n_bins) >> 8;
			int value30 = (d30 * n_bins) >> 8;
			int value31 = (d31 * n_bins) >> 8;
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
            histogram_16[value16]++;
			histogram_17[value17]++;
			histogram_18[value18]++;
			histogram_19[value19]++;
			histogram_20[value20]++;
			histogram_21[value21]++;
			histogram_22[value22]++;
			histogram_23[value23]++;
			histogram_24[value24]++;
			histogram_25[value25]++;
			histogram_26[value26]++;
			histogram_27[value27]++;
			histogram_28[value28]++;
			histogram_29[value29]++;
			histogram_30[value30]++;
			histogram_31[value31]++;
		}

		uint16 histo_0[256];
        uint16 histo_1[256];
		for(int j = 0; j < n_bins; j++) {
			histo_0[j].s0 = histogram_0[j];
			histo_0[j].s1 = histogram_1[j];
			histo_0[j].s2 = histogram_2[j];
			histo_0[j].s3 = histogram_3[j];
			histo_0[j].s4 = histogram_4[j];
			histo_0[j].s5 = histogram_5[j];
			histo_0[j].s6 = histogram_6[j];
			histo_0[j].s7 = histogram_7[j];
			histo_0[j].s8 = histogram_8[j];
			histo_0[j].s9 = histogram_9[j];
			histo_0[j].sA = histogram_10[j];
			histo_0[j].sB = histogram_11[j];
			histo_0[j].sC = histogram_12[j];
			histo_0[j].sD = histogram_13[j];
			histo_0[j].sE = histogram_14[j];
			histo_0[j].sF = histogram_15[j];
            histo_1[j].s0 = histogram_16[j];
			histo_1[j].s1 = histogram_17[j];
			histo_1[j].s2 = histogram_18[j];
			histo_1[j].s3 = histogram_19[j];
			histo_1[j].s4 = histogram_20[j];
			histo_1[j].s5 = histogram_21[j];
			histo_1[j].s6 = histogram_22[j];
			histo_1[j].s7 = histogram_23[j];
			histo_1[j].s8 = histogram_24[j];
			histo_1[j].s9 = histogram_25[j];
			histo_1[j].sA = histogram_26[j];
			histo_1[j].sB = histogram_27[j];
			histo_1[j].sC = histogram_28[j];
			histo_1[j].sD = histogram_29[j];
			histo_1[j].sE = histogram_30[j];
			histo_1[j].sF = histogram_31[j];
			write_channel_altera(chan_out[0], histo_0[j]);
            write_channel_altera(chan_out[1], histo_1[j]);
		}
    }
}


__kernel 
void TQHistogram_out(__global int *histo, unsigned int gpuQueueSize, unsigned int n_bins) {

	for(int i = 0; i < gpuQueueSize; ++i){
		for(int j = 0; j < n_bins; j++){
            uint16 h_0 = read_channel_altera(chan_out[0]);
            uint16 h_1 = read_channel_altera(chan_out[1]);
			histo[i * n_bins + j] = h_0.s0 + h_0.s1 + h_0.s2 + h_0.s3 + h_0.s4 + h_0.s5 + h_0.s6 + h_0.s7
                                  + h_0.s8 + h_0.s9 + h_0.sA + h_0.sB + h_0.sC + h_0.sD + h_0.sE + h_0.sF
                                  + h_1.s0 + h_1.s1 + h_1.s2 + h_1.s3 + h_1.s4 + h_1.s5 + h_1.s6 + h_1.s7
                                  + h_1.s8 + h_1.s9 + h_1.sA + h_1.sB + h_1.sC + h_1.sD + h_1.sE + h_1.sF;
		}
	}		
}
