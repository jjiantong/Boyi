
	channel int8 chan_in __attribute__((depth(64)));
    channel int8 chan_out __attribute__((depth(64)));

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 8;
	for(int i = 0; i < size; i++){
        int8 data = ((__global int8*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(const uint in_size)
{
	int pout = 0;
    int8 out;
    int size = in_size / 8;
	for(int i = 0; i < size; i++){
		int8 in = read_channel_altera(chan_in);
        out.s0 = pout + in.s0;
        out.s1 = out.s0 + in.s1;
        out.s2 = out.s1 + in.s2;
        out.s3 = out.s2 + in.s3;
        out.s4 = out.s3 + in.s4;
        out.s5 = out.s4 + in.s5;
        out.s6 = out.s5 + in.s6;
        out.s7 = out.s6 + in.s7;
        write_channel_altera(chan_out, out);
        pout = out.s7;
	}
}

__kernel void prefixSum_out(__global int *restrict output, 
						const uint in_size)
{
	int8 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 8;
	for(int i = 0; i < size; i++){
		int8 out = read_channel_altera(chan_out);
		tmp_buff.s1 = out.s0;
        tmp_buff.s2 = out.s1;
        tmp_buff.s3 = out.s2;
        tmp_buff.s4 = out.s3;
        tmp_buff.s5 = out.s4;
        tmp_buff.s6 = out.s5;
        tmp_buff.s7 = out.s6;
        ((__global int8*)output)[i] = tmp_buff;
        tmp_buff.s0 = out.s7;
	}
}


