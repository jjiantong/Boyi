#define _OPENCL_COMPILER_
#define SIZE 40000
#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

	channel Taa chan;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_in(int n, int m, __global Taa *matrix) {

    const int element_num = m * n;

	for(int i = element_num - 1; i >= 0; --i) {

		write_channel_altera(chan, matrix[i]);
	}

}


__kernel 
void Padding_0(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);

	Taa reg[SIZE];
	for(int i = 0; i < SIZE; i++)
		reg[i] = 0.0f;

	for(int i = matrix_size - 1; i >= 0; --i) {

		if((i % (n + pad)) < n)
			reg[i] = read_channel_altera(chan);
		else
			reg[i] = 0.0f;	
	}

	for(int i = 0; i < SIZE; i++)
		matrix[i] = reg[i];

}

