
	channel int8 chan_in;

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 8;
	for(int i = 0; i < size; i++){
        int8 data = ((__global int8*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(__global int *restrict output, 
						const uint in_size)
{
	output[0] = 0;
    int size = in_size / 8;
	for(int i = 1; i < size; i++){
		int8 in = read_channel_altera(chan_in);
        output[8*i-7] = output[8*i-8] + in.s0;
        output[8*i-6] = output[8*i-7] + in.s1;
        output[8*i-5] = output[8*i-6] + in.s2;
        output[8*i-4] = output[8*i-5] + in.s3;
        output[8*i-3] = output[8*i-4] + in.s4;
        output[8*i-2] = output[8*i-3] + in.s5;
        output[8*i-1] = output[8*i-2] + in.s6;
        output[8*i]   = output[8*i-1] + in.s7;
	}
    int8 in = read_channel_altera(chan_in);
    output[in_size-7] = output[in_size-8] + in.s0;
    output[in_size-6] = output[in_size-7] + in.s1;
    output[in_size-5] = output[in_size-6] + in.s2;
    output[in_size-4] = output[in_size-5] + in.s3;
    output[in_size-3] = output[in_size-4] + in.s4;
    output[in_size-2] = output[in_size-3] + in.s5;
    output[in_size-1] = output[in_size-2] + in.s6;
}

