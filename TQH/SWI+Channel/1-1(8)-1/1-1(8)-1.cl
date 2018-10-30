#define _OPENCL_COMPILER_

#include "support/common.h"

	channel int chan[8];
	channel int chan_out[8];

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,
    unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 3;

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
void TQHistogram_0(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram_0[256];
	int histogram_1[256];
	int histogram_2[256];
	int histogram_3[256];
	int histogram_4[256];
	int histogram_5[256];
	int histogram_6[256];
	int histogram_7[256];

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
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d0 = read_channel_altera(chan[0]);
			int d1 = read_channel_altera(chan[1]);
			int d2 = read_channel_altera(chan[2]);
			int d3 = read_channel_altera(chan[3]);
			int d4 = read_channel_altera(chan[4]);
			int d5 = read_channel_altera(chan[5]);
			int d6 = read_channel_altera(chan[6]);
			int d7 = read_channel_altera(chan[7]);
			int value0 = (d0 * n_bins) >> 8;
			int value1 = (d1 * n_bins) >> 8;
			int value2 = (d2 * n_bins) >> 8;
			int value3 = (d3 * n_bins) >> 8;
			int value4 = (d4 * n_bins) >> 8;
			int value5 = (d5 * n_bins) >> 8;
			int value6 = (d6 * n_bins) >> 8;
			int value7 = (d7 * n_bins) >> 8;
			histogram_0[value0]++;
			histogram_1[value1]++;
			histogram_2[value2]++;
			histogram_3[value3]++;
			histogram_4[value4]++;
			histogram_5[value5]++;
			histogram_6[value6]++;
			histogram_7[value7]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[0], histogram_0[j]);
			write_channel_altera(chan_out[1], histogram_1[j]);
			write_channel_altera(chan_out[2], histogram_2[j]);
			write_channel_altera(chan_out[3], histogram_3[j]);
			write_channel_altera(chan_out[4], histogram_4[j]);
			write_channel_altera(chan_out[5], histogram_5[j]);
			write_channel_altera(chan_out[6], histogram_6[j]);
			write_channel_altera(chan_out[7], histogram_7[j]);
		}
    }
}


__kernel 
void TQHistogram_out(__global int *histo, unsigned int gpuQueueSize, unsigned int n_bins) {

	for(int i = 0; i < gpuQueueSize; ++i){
		for(int j = 0; j < n_bins; j++){
			unsigned int h0 = read_channel_altera(chan_out[0]);
			unsigned int h1 = read_channel_altera(chan_out[1]);
			unsigned int h2 = read_channel_altera(chan_out[2]);
			unsigned int h3 = read_channel_altera(chan_out[3]);
			unsigned int h4 = read_channel_altera(chan_out[4]);
			unsigned int h5 = read_channel_altera(chan_out[5]);
			unsigned int h6 = read_channel_altera(chan_out[6]);
			unsigned int h7 = read_channel_altera(chan_out[7]); 
			histo[i * n_bins + j] = h0 + h1 + h2 + h3 + h4 + h5 + h6 + h7;
		}
	}		
}
