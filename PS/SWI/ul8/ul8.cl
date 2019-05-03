#define L_BLOCK_SIZE 512

__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	output[0] = 0;
	#pragma unroll 8
	for(int i = 1; i < in_size; i++)
		output[i] = output[i-1] + input[i-1];
}
