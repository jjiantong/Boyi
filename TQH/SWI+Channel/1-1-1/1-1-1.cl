#define _OPENCL_COMPILER_

#include "support/common.h"

	channel int chan;
	channel int chan_out;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,int gpuQueueSize, int frame_size) {

	int size = gpuQueueSize * frame_size;

	for(int i = 0; i < size; i ++) {
		
		write_channel_altera(chan, data[i]);
	}
}


__kernel 
void TQHistogram_0(int gpuQueueSize, int frame_size, int n_bins) {

	int histogram[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		for(int j = 0; j < frame_size; j++) {
			int d = read_channel_altera(chan);
			int value = (d * n_bins) >> 8;
			histogram[value]++;
		}

		for(int j = 0; j < n_bins; j++) {
			write_channel_altera(chan_out, histogram[j]);
		}
    }
}

__kernel 
void TQHistogram_out(__global int *histo,int gpuQueueSize, int n_bins) {

	int size = gpuQueueSize * n_bins;

	for(int i = 0; i < size; ++i) 
		histo[i] = read_channel_altera(chan_out);		
}
