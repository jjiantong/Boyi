#define _OPENCL_COMPILER_

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_kernel(int size, int value, __global int *input ) {

	int pos = 0;
	int reg[65536];

	for(int i = 0; i < 65536; i++)
		reg[i] = input[i];

	#pragma unroll 1
	for(int my = 0; my < 65536; my++) {
        if(reg[my] != value) {
            reg[pos] = reg[my];
            pos++;
        }
    }

	for(int i = 0; i < 65536; i++)
		input[i] = reg[i];
}
