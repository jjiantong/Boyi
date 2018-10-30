#define _OPENCL_COMPILER_

#include "support/common.h"

	channel int chan[8] __attribute__((depth(8)));
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

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
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

		uint size2 = frame_size >> 3;
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

		uint size2 = frame_size >> 3;
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
void TQHistogram_3(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[3]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[3], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_4(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[4]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[4], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_5(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[5]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[5], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_6(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[6]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[6], histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_7(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		uint size2 = frame_size >> 3;
		for(int j = 0; j < size2; j++) {
			int d = read_channel_altera(chan[7]);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out[7], histogram[j]);
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
