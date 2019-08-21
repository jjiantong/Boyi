
	channel int4 chan_in __attribute__((depth(64)));
    channel int4 chan_out __attribute__((depth(64)));

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 4;
	for(int i = 0; i < size; i++){
        int4 data = ((__global int4*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(const uint in_size)
{
	int pout = 0;
    int4 out;
    int size = in_size / 4;
	for(int i = 0; i < size; i++){
		int4 in = read_channel_altera(chan_in);
        out.s0 = pout + in.s0;
        out.s1 = out.s0 + in.s1;
        out.s2 = out.s1 + in.s2;
        out.s3 = out.s2 + in.s3;
        write_channel_altera(chan_out, out);
        pout = out.s3;
	}
}

__kernel void prefixSum_out(__global int *restrict output, 
						const uint in_size)
{
	int4 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 4;
	for(int i = 0; i < size; i++){
		int4 out = read_channel_altera(chan_out);
		tmp_buff.s1 = out.s0;
        tmp_buff.s2 = out.s1;
        tmp_buff.s3 = out.s2;
        ((__global int4*)output)[i] = tmp_buff;
        tmp_buff.s0 = out.s3;
	}
}