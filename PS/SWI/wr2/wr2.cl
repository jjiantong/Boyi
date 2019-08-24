__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	int2 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 2;
	for(int i = 0; i < size; i++) {
        int2 in = ((__global int2*)input)[i];
        tmp_buff.s1 = tmp_buff.s0 + in.s0;
        ((__global int2*)output)[i] = tmp_buff;
		tmp_buff.s0 = tmp_buff.s1 + in.s1;
    }
}

