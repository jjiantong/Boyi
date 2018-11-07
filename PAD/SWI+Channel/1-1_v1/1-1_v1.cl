#define _OPENCL_COMPILER_

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

	int pre_x = 0;
	for(int i = matrix_size - 1; i >= 0; --i) {
		
		if(pre_x == 0){
			matrix[i] = 0.0f;
			pre_x = n;
		}
		else{
			Taa m = read_channel_altera(chan);
			matrix[i] = m;
			pre_x --;
		}
	
	}
}

