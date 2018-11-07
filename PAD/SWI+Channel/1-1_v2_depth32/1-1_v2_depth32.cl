#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

	channel Taa chan __attribute__((depth(32)));

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_in(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);

	for(int i = matrix_size - 1; i >= 0; --i) {
		int x = i % (n + pad);
		int y = i / (n + pad);

		Taa m = 0.0f;
		if(x < n)
			m = matrix[y * n + x];

		write_channel_altera(chan, m);
	}
}


__kernel 
void Padding_0(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);

	for(int i = matrix_size - 1; i >= 0; --i) {
		
		matrix[i] = read_channel_altera(chan);
	}
}

