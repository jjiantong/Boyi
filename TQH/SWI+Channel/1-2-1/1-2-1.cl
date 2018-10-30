#define _OPENCL_COMPILER_

#include "support/common.h"

	channel int chan[2];
	channel int chan_out[2];

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data, unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 1;

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
void TQHistogram_0(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 1;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[0]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[0], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_1(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 1;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[1]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[1], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_out(__global int *histo, unsigned int gpuQueueSize, unsigned int n_bins) {

	for(int i = 0; i < gpuQueueSize; ++i){
		for(int j = 0; j < n_bins; j++){
			unsigned int h0 = read_channel_altera(chan_out[0]);
			unsigned int h1 = read_channel_altera(chan_out[1]);
			histo[i * n_bins + j] = h0 + h1;
		}
	}		
}
