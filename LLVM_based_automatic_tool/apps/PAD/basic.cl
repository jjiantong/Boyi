#define _OPENCL_COMPILER_
#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_kernel(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);
	double reg[40000];

	for(int i = 0; i < 40000; i++)
		reg[i] = matrix[i];

	#pragma unroll 1	
	for(int i = 39999; i >= 0; --i) {
		int x = i % (n + pad);
		int y = i / (n + pad);
		if(x < n)
			reg[y * (n + pad) + x] = reg[y * n + x];
		else
			reg[y * (n + pad) + x] = 0.0f;
	}

	for(int i = 0; i < 40000; i++)
		matrix[i] = reg[i];


}
