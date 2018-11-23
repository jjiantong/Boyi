#define _OPENCL_COMPILER_
#define SIZE 256

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_gpu(__global task_t *queue, __global int *data, __global int *histo, int offset,
    int gpuQueueSize, int frame_size, int n_bins) {

	int histogram[SIZE];
	task_t t;

	#pragma unroll 2
	for(int i = 0; i < gpuQueueSize; ++i) {
		
		t.id = queue[i].id;
		t.op = queue[i].op;

		for(int j = 0; j < n_bins; j++) {
			histogram[j] = 0;
		}

		for(int j = 0; j < frame_size / 2; j++) {
			int index0 = (t.id - offset) * frame_size + j * 2;
			int index1 = (t.id - offset) * frame_size + j * 2 + 1;
			int value0 = (data[index0] * n_bins) >> 8;
			int value1 = (data[index1] * n_bins) >> 8;
			histogram[value0]++;
			histogram[value1]++;
		}

		for(int j = 0; j < n_bins; j++) {
			histo[(t.id - offset) * n_bins + j] = histogram[j];
		}

    }
}
