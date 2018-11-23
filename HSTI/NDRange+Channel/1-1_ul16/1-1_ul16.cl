#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

	channel uint16 chan;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(int n_tasks, __global uint *data) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

	int size = n_tasks / 16;

    for(int i = bx; i < size; i += gD) {
		
		uint16 data_uint16 = ((__global uint16*)data)[i * bD + tx];
        write_channel_altera(chan, data_uint16);
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
    __local unsigned int l_histo_8[256];
	__local unsigned int l_histo_9[256];
	__local unsigned int l_histo_10[256];
	__local unsigned int l_histo_11[256];
	__local unsigned int l_histo_12[256];
	__local unsigned int l_histo_13[256];
	__local unsigned int l_histo_14[256];
	__local unsigned int l_histo_15[256];   
    
    for(int pos = tx; pos < bins; pos += bD) {
        l_histo_0[pos] = 0;
		l_histo_1[pos] = 0;
		l_histo_2[pos] = 0;
		l_histo_3[pos] = 0;
		l_histo_4[pos] = 0;
		l_histo_5[pos] = 0;
		l_histo_6[pos] = 0;
		l_histo_7[pos] = 0;
        l_histo_8[pos] = 0;
		l_histo_9[pos] = 0;
		l_histo_10[pos] = 0;
		l_histo_11[pos] = 0;
		l_histo_12[pos] = 0;
		l_histo_13[pos] = 0;
		l_histo_14[pos] = 0;
		l_histo_15[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        uint16 d = read_channel_altera(chan);
        unsigned int d0 = d.s0;
        unsigned int d1 = d.s1;
        unsigned int d2 = d.s2;
        unsigned int d3 = d.s3;
        unsigned int d4 = d.s4;
        unsigned int d5 = d.s5;
        unsigned int d6 = d.s6;
        unsigned int d7 = d.s7;
        unsigned int d8 = d.s8;
        unsigned int d9 = d.s9;
        unsigned int dA = d.sA;
        unsigned int dB = d.sB;
        unsigned int dC = d.sC;
        unsigned int dD = d.sD;
        unsigned int dE = d.sE;
        unsigned int dF = d.sF;
        atomic_add(&l_histo_0[((d0 * bins) >> 12)], 1);
		atomic_add(&l_histo_1[((d1 * bins) >> 12)], 1);
		atomic_add(&l_histo_2[((d2 * bins) >> 12)], 1);
		atomic_add(&l_histo_3[((d3 * bins) >> 12)], 1);
		atomic_add(&l_histo_4[((d4 * bins) >> 12)], 1);
		atomic_add(&l_histo_5[((d5 * bins) >> 12)], 1);
		atomic_add(&l_histo_6[((d6 * bins) >> 12)], 1);
		atomic_add(&l_histo_7[((d7 * bins) >> 12)], 1);
        atomic_add(&l_histo_8[((d8 * bins) >> 12)], 1);
		atomic_add(&l_histo_9[((d9 * bins) >> 12)], 1);
		atomic_add(&l_histo_10[((dA * bins) >> 12)], 1);
		atomic_add(&l_histo_11[((dB * bins) >> 12)], 1);
		atomic_add(&l_histo_12[((dC * bins) >> 12)], 1);
		atomic_add(&l_histo_13[((dD * bins) >> 12)], 1);
		atomic_add(&l_histo_14[((dE * bins) >> 12)], 1);
		atomic_add(&l_histo_15[((dF * bins) >> 12)], 1);
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
        atomic_add(histo + pos, l_histo_8[pos]);
		atomic_add(histo + pos, l_histo_9[pos]);
		atomic_add(histo + pos, l_histo_10[pos]);
		atomic_add(histo + pos, l_histo_11[pos]);
		atomic_add(histo + pos, l_histo_12[pos]);
		atomic_add(histo + pos, l_histo_13[pos]);
		atomic_add(histo + pos, l_histo_14[pos]);
		atomic_add(histo + pos, l_histo_15[pos]);
    }
}