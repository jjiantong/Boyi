#define L_BLOCK_SIZE 512

__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	__local int p_in[L_BLOCK_SIZE];
	__local int p_out[L_BLOCK_SIZE];
	int base = 0;
	int cnt  = in_size / L_BLOCK_SIZE;

	for (int i = 0; i < cnt; i++){
		
		#pragma unroll 2
        for (int b = 0; b < L_BLOCK_SIZE; b++)
			p_in[b] = input[i * L_BLOCK_SIZE + b];

		p_out[0] = base;
		for (int b = 1; b < L_BLOCK_SIZE; b++)
			p_out[b] = p_out[b-1] + p_in[b-1];
		base = p_out[L_BLOCK_SIZE-1] + p_in[L_BLOCK_SIZE-1];

		for (int b = 0; b < L_BLOCK_SIZE; b++)
			output[i * L_BLOCK_SIZE + b] = p_out[b];
	}
}
