__kernel void prefixSum(__global int *restrict output, 
						__global int *restrict input,
						const uint in_size)
{
	int4 tmp_buff;
    tmp_buff.s0 = 0;
    int size = in_size / 4;
	for(int i = 0; i < size; i++) {
        int4 in = ((__global int4*)input)[i];
        tmp_buff.s1 = tmp_buff.s0 + in.s0;
        tmp_buff.s2 = tmp_buff.s1 + in.s1;
        tmp_buff.s3 = tmp_buff.s2 + in.s2;
        ((__global int4*)output)[i] = tmp_buff;
		tmp_buff.s0 = tmp_buff.s3 + in.s3;
    }
}

