
	channel int16 chan_in __attribute__((depth(64)));

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 16;
	for(int i = 0; i < size; i++){
        int16 data = ((__global int16*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(__global int *restrict output, 
						const uint in_size)
{
	int16 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 16;
	for(int i = 0; i < size; i++){
		int16 in = read_channel_altera(chan_in);
        tmp_buff.s1 = tmp_buff.s0 + in.s0;
        tmp_buff.s2 = tmp_buff.s1 + in.s1;
        tmp_buff.s3 = tmp_buff.s2 + in.s2;
        tmp_buff.s4 = tmp_buff.s3 + in.s3;
        tmp_buff.s5 = tmp_buff.s4 + in.s4;
        tmp_buff.s6 = tmp_buff.s5 + in.s5;
        tmp_buff.s7 = tmp_buff.s6 + in.s6;
        tmp_buff.s8 = tmp_buff.s7 + in.s7;
        tmp_buff.s9 = tmp_buff.s8 + in.s8;
        tmp_buff.sA = tmp_buff.s9 + in.s9;
        tmp_buff.sB = tmp_buff.sA + in.sA;
        tmp_buff.sC = tmp_buff.sB + in.sB;
        tmp_buff.sD = tmp_buff.sC + in.sC;
        tmp_buff.sE = tmp_buff.sD + in.sD;
        tmp_buff.sF = tmp_buff.sE + in.sE;
        ((__global int16*)output)[i] = tmp_buff;
        tmp_buff.s0 = tmp_buff.sF + in.sF;
	}
}

