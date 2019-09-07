
	channel int16 chan_in __attribute__((depth(64)));
    channel int16 chan_out __attribute__((depth(64)));

__kernel void prefixSum_in(	__global int *restrict input,
							const uint in_size)
{
    int size = in_size / 16;
	for(int i = 0; i < size; i++){
        int16 data = ((__global int16*)input)[i];
        write_channel_altera(chan_in, data);
    }
}

__kernel void prefixSum(const uint in_size)
{
	int pout = 0;
    int16 out;
    int size = in_size / 16;
	for(int i = 0; i < size; i++){
		int16 in = read_channel_altera(chan_in);
        out.s0 = pout + in.s0;
        out.s1 = out.s0 + in.s1;
        out.s2 = out.s1 + in.s2;
        out.s3 = out.s2 + in.s3;
        out.s4 = out.s3 + in.s4;
        out.s5 = out.s4 + in.s5;
        out.s6 = out.s5 + in.s6;
        out.s7 = out.s6 + in.s7;
        out.s8 = out.s7 + in.s8;
        out.s9 = out.s8 + in.s9;
        out.sA = out.s9 + in.sA;
        out.sB = out.sA + in.sB;
        out.sC = out.sB + in.sC;
        out.sD = out.sC + in.sD;
        out.sE = out.sD + in.sE;
        out.sF = out.sE + in.sF;
        write_channel_altera(chan_out, out);
        pout = out.sF;
	}
}

__kernel void prefixSum_out(__global int *restrict output, 
						const uint in_size)
{
	int16 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 16;
	for(int i = 0; i < size; i++){
		int16 out = read_channel_altera(chan_out);
		tmp_buff.s1 = out.s0;
        tmp_buff.s2 = out.s1;
        tmp_buff.s3 = out.s2;
        tmp_buff.s4 = out.s3;
        tmp_buff.s5 = out.s4;
        tmp_buff.s6 = out.s5;
        tmp_buff.s7 = out.s6;
        tmp_buff.s8 = out.s7;
        tmp_buff.s9 = out.s8;
        tmp_buff.sA = out.s9;
        tmp_buff.sB = out.sA;
        tmp_buff.sC = out.sB;
        tmp_buff.sD = out.sC;
        tmp_buff.sE = out.sD;
        tmp_buff.sF = out.sE;
        ((__global int16*)output)[i] = tmp_buff;
        tmp_buff.s0 = out.sF;
	}
}


