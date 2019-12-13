#define _OPENCL_COMPILER_


#include "support/common.h"

#define _OPENCL_COMPILER_

	channel unsigned int chan;

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_in(unsigned int size, __global int *input ) {

	for(int i = 0; i < size; i ++){
		
		write_channel_altera(chan, input[i]);
	}
}

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_0(unsigned int size, int value, __global int *input ) {

	int pos = 0;

    #pragma unroll 2
	for(int i = 0; i < size; i ++){
	
		int in = read_channel_altera(chan);
		if(in != value){
			input[pos] = in;
			pos ++;
		}
	}
}
