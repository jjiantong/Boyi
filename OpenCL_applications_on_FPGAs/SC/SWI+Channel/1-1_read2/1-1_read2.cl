#define _OPENCL_COMPILER_


#include "support/common.h"

#define _OPENCL_COMPILER_

	channel uint2 chan;

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_in(unsigned int size, __global int *input ) {

	unsigned int size2 = size >> 2;

	for(int i = 0; i < size2; i ++){
		
		write_channel_altera(chan, ((__global uint2*)input)[i]);
	}
}

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_0(unsigned int size, int value, __global int *input ) {

	int pos = 0;
	unsigned int size2 = size >> 2;

	for(int i = 0; i < size2; i ++){
	
		uint2 in_uint2 = read_channel_altera(chan);
		
		uint p_in[2];
		p_in[0] = in_uint2.s0;
		p_in[1] = in_uint2.s1;

		if(p_in[0] != value){
			input[pos] = p_in[0];
			pos ++;
		}
		if(p_in[1] != value){
			input[pos] = p_in[1];
			pos ++;
		}
	}
}
