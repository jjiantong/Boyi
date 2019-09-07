
	channel int4 chan_in __attribute__((depth(64)));

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
	int4 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 4;
	for(int i = 0; i < size; i++){
		int4 in = read_channel_altera(chan_in);
        tmp_buff.s1 = tmp_buff.s0 + in.s0;
        tmp_buff.s2 = tmp_buff.s1 + in.s1;
        tmp_buff.s3 = tmp_buff.s2 + in.s2;
        ((__global int4*)output)[i] = tmp_buff;
        tmp_buff.s0 = tmp_buff.s3 + in.s3;
	}
}

