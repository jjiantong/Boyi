#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

	channel unsigned int chan[8] __attribute__((depth(64)));

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(int n_tasks, __global uint *data) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

	int size = n_tasks / 8;

    for(int i = bx; i < size; i += gD) {
		
		uint8 data_uint8 = ((__global uint8*)data)[i * bD + tx];
    
		uint p_data[8];
		p_data[0] = data_uint8.s0;
		p_data[1] = data_uint8.s1;
		p_data[2] = data_uint8.s2;
		p_data[3] = data_uint8.s3;
		p_data[4] = data_uint8.s4;
		p_data[5] = data_uint8.s5;
		p_data[6] = data_uint8.s6;
		p_data[7] = data_uint8.s7;

        write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
		write_channel_altera(chan[2], p_data[2]);
		write_channel_altera(chan[3], p_data[3]);
		write_channel_altera(chan[4], p_data[4]);
		write_channel_altera(chan[5], p_data[5]);
		write_channel_altera(chan[6], p_data[6]);
		write_channel_altera(chan[7], p_data[7]);
	}
}


__kernel
void Histogram_0(int bins, int n_tasks,
    __global unsigned int *histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);
	
	__local unsigned int l_histo_0[256];
	__local unsigned int l_histo_1[256];
	__local unsigned int l_histo_2[256];
	__local unsigned int l_histo_3[256];
	__local unsigned int l_histo_4[256];
	__local unsigned int l_histo_5[256];
	__local unsigned int l_histo_6[256];
	__local unsigned int l_histo_7[256];

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo_0[pos] = 0;
		l_histo_1[pos] = 0;
		l_histo_2[pos] = 0;
		l_histo_3[pos] = 0;
		l_histo_4[pos] = 0;
		l_histo_5[pos] = 0;
		l_histo_6[pos] = 0;
		l_histo_7[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 8;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d0 = read_channel_altera(chan[0]);
		unsigned int d1 = read_channel_altera(chan[1]);
		unsigned int d2 = read_channel_altera(chan[2]);
		unsigned int d3 = read_channel_altera(chan[3]);
		unsigned int d4 = read_channel_altera(chan[4]);
		unsigned int d5 = read_channel_altera(chan[5]);
		unsigned int d6 = read_channel_altera(chan[6]);
		unsigned int d7 = read_channel_altera(chan[7]);
        atomic_add(&l_histo_0[((d0 * bins) >> 12)], 1);
		atomic_add(&l_histo_1[((d1 * bins) >> 12)], 1);
		atomic_add(&l_histo_2[((d2 * bins) >> 12)], 1);
		atomic_add(&l_histo_3[((d3 * bins) >> 12)], 1);
		atomic_add(&l_histo_4[((d4 * bins) >> 12)], 1);
		atomic_add(&l_histo_5[((d5 * bins) >> 12)], 1);
		atomic_add(&l_histo_6[((d6 * bins) >> 12)], 1);
		atomic_add(&l_histo_7[((d7 * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo_0[pos]);
		atomic_add(histo + pos, l_histo_1[pos]);
		atomic_add(histo + pos, l_histo_2[pos]);
		atomic_add(histo + pos, l_histo_3[pos]);
		atomic_add(histo + pos, l_histo_4[pos]);
		atomic_add(histo + pos, l_histo_5[pos]);
		atomic_add(histo + pos, l_histo_6[pos]);
		atomic_add(histo + pos, l_histo_7[pos]);
    }
}
