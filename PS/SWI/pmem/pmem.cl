#define L_BLOCK_SIZE 512 * 512

__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	int p_in[L_BLOCK_SIZE];
	int p_out[L_BLOCK_SIZE];
	
	for(int i = 0; i < in_size; i++)
		p_in[i] = input[i];

	p_out[0] = 0;
	for(int i = 1; i < in_size; i++)
		p_out[i] = p_out[i-1] + p_in[i-1];

	for(int i = 0; i < in_size; i++)
		output[i] = p_out[i];
}
