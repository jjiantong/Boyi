
	channel int4 chan_in;

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 4;
	for(int i = 0; i < size; i++){
        int4 data = ((__global int4*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(__global int *restrict output, 
						const uint in_size)
{
	output[0] = 0;
    int size = in_size / 4;
	for(int i = 1; i < size; i++){
		int4 in = read_channel_altera(chan_in);
        output[4*i-3] = output[4*i-4] + in.s0;
        output[4*i-2] = output[4*i-3] + in.s1;
        output[4*i-1] = output[4*i-2] + in.s2;
        output[4*i]   = output[4*i-1] + in.s3;
	}
    int4 in = read_channel_altera(chan_in);
    output[in_size-3] = output[in_size-4] + in.s0;
    output[in_size-2] = output[in_size-3] + in.s1;
    output[in_size-1] = output[in_size-2] + in.s2;
}

