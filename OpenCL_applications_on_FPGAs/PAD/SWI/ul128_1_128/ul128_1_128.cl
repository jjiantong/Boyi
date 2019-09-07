#define _OPENCL_COMPILER_
#define SIZE 40000
#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_kernel(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);
	double reg[SIZE];

	#pragma unroll 128
	for(int i = 0; i < SIZE; i++)
		reg[i] = matrix[i];

	for(int i = matrix_size - 1; i >= 0; --i) {
		int x = i % (n + pad);
		int y = i / (n + pad);
		if(x < n)
			reg[y * (n + pad) + x] = reg[y * n + x];
		else
			reg[y * (n + pad) + x] = 0.0f;
	}

	#pragma unroll 128
	for(int i = 0; i < SIZE; i++)
		matrix[i] = reg[i];


}
