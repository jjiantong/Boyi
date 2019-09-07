
	channel int2 chan_in __attribute__((depth(64)));
    channel int2 chan_out __attribute__((depth(64)));

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 2;
	for(int i = 0; i < size; i++){
        int2 data = ((__global int2*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(const uint in_size)
{
	int pout = 0;
    int2 out;
    int size = in_size / 2;
	for(int i = 0; i < size; i++){
		int2 in = read_channel_altera(chan_in);
        out.s0 = pout + in.s0;
        out.s1 = out.s0 + in.s1;
        write_channel_altera(chan_out, out);
        pout = out.s1;
	}
}

__kernel void prefixSum_out(__global int *restrict output, 
						const uint in_size)
{
	int2 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 2;
	for(int i = 0; i < size; i++){
		int2 out = read_channel_altera(chan_out);
		tmp_buff.s1 = out.s0;
        ((__global int2*)output)[i] = tmp_buff;
        tmp_buff.s0 = out.s1;
	}
}


