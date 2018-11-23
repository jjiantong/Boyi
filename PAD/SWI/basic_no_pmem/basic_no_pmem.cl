#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Padding_kernel(int n, int m, int pad, __global Taa *matrix) {

    const int matrix_size = m * (n + pad);

	for(int i = matrix_size - 1; i >= 0; --i) {
		int x = i % (n + pad);
		int y = i / (n + pad);
		if(x < n)
			matrix[y * (n + pad) + x] = matrix[y * n + x];
		else
			matrix[y * (n + pad) + x] = 0.0f;
	
	}

}
