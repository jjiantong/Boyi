#define _OPENCL_COMPILER_
#define SIZE 1024

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_kernel(int size, int value, __global int *input ) {

	int iter = size / SIZE;
	int counter = 0;

	for(int j = 0; j < iter; j ++){
	
		int pos = 0;
		int reg[SIZE];

		for(int i = 0; i < SIZE; i++)
			reg[i] = input[j * SIZE + i];

		for(int my = 0; my < SIZE; my++) {
			if(reg[my] != value) {
				reg[pos] = reg[my];
				pos++;
			}
		}

		for(int i = 0; i < pos; i++)
			input[counter + i] = reg[i];
			
		counter += pos;	
	}

}
