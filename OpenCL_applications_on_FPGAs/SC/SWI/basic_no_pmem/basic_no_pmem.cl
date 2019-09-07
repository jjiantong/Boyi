#define _OPENCL_COMPILER_


#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_kernel(int size, int value, __global int *input ) {

	int pos = 0;

	for(int my = 0; my < size; my++) {
        if(input[my] != value) {
            input[pos] = input[my];
            pos++;
        }
    }
}
