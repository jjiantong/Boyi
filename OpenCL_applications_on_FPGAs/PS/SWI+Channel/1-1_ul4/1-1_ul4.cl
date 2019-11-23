
	channel int chan_in;

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
	for(int i = 0; i < in_size-1; i++)
		write_channel_altera(chan_in, input[i]);
}

__kernel void prefixSum(__global int *restrict output, 
						const uint in_size)
{
	output[0] = 0;
	#pragma unroll 4
	for(int i = 1; i < in_size; i++){
		int in = read_channel_altera(chan_in);
		output[i] = output[i-1] + in;
	}
}

