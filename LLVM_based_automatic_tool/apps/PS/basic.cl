

__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	output[0] = 0;
	#pragma unroll 1
	for(int i = 1; i < 262143; i++)
		output[i] = output[i-1] + input[i-1];
}

