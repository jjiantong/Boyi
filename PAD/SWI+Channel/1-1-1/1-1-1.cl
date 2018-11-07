#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

	channel Taa chan;
	channel Taa chan_out;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_in(int n, int m, __global Taa *matrix) {

    const int element_num = m * n;

	for(int i = element_num - 1; i >= 0; --i) {

		write_channel_altera(chan, matrix[i]);
	}
}


__kernel 
void Padding_0(int n, int m, int pad) {

    const int matrix_size = m * (n + pad);

	for(int i = matrix_size - 1; i >= 0; --i) {
		int x = i % (n + pad);
		int y = i / (n + pad);

		Taa m = 0.0f;
		if(x < n)
			m = read_channel_altera(chan);

		write_channel_altera(chan_out, m);
	}
}

__kernel 
void Padding_out(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);

	for(int i = matrix_size - 1; i >= 0; --i) {
		
		matrix[i] = read_channel_altera(chan_out);
	}
}
