
	channel int2 chan_in;

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 2;
	for(int i = 0; i < size; i++){
        int2 data = ((__global int2*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(__global int *restrict output, 
						const uint in_size)
{
	output[0] = 0;
    int size = in_size / 2;
	for(int i = 1; i < size; i++){
		int2 in = read_channel_altera(chan_in);
		output[2*i-1] = output[2*i-2] + in.s0;
        output[2*i]   = output[2*i-1] + in.s1;
	}
    int2 in = read_channel_altera(chan_in);
    output[in_size-1] = output[in_size-2] + in.s0;
}

