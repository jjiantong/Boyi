#define _OPENCL_COMPILER_

#include "support/common.h"

	channel int chan[4];
	channel int chan_out[3];

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,
    unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 2;

	for(int i = 0; i < size2; i ++) {

		uint4 data_uint4 = ((__global uint4*)data)[i];

		uint p_data[4];
		p_data[0] = data_uint4.s0;
		p_data[1] = data_uint4.s1;
		p_data[2] = data_uint4.s2;
		p_data[3] = data_uint4.s3;
		
		write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
		write_channel_altera(chan[2], p_data[2]);
		write_channel_altera(chan[3], p_data[3]);
	}
}


__kernel 
void TQHistogram_0(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 2;
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

		uint size2 = frame_size >> 2;
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
void TQHistogram_2(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 2;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[2]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[2], histogram[j]);
		}
    }
}


__kernel 
void TQHistogram_3(__global int *histo,
    unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 2;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[3]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			unsigned int h0 = read_channel_altera(chan_out[0]);
			unsigned int h1 = read_channel_altera(chan_out[1]);
			unsigned int h2 = read_channel_altera(chan_out[2]);
			histo[i * n_bins + j] = histogram[j] + h0 + h1 + h2;
		}
    }
}
