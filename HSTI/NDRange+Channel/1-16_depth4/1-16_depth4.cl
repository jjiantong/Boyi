#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

	channel unsigned int chan[16] __attribute__((depth(4)));

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
    
		uint p_data[16];
		p_data[0] = data_uint16.s0;
		p_data[1] = data_uint16.s1;
		p_data[2] = data_uint16.s2;
		p_data[3] = data_uint16.s3;
		p_data[4] = data_uint16.s4;
		p_data[5] = data_uint16.s5;
		p_data[6] = data_uint16.s6;
		p_data[7] = data_uint16.s7;
		p_data[8] = data_uint16.s8;
		p_data[9] = data_uint16.s9;
		p_data[10] = data_uint16.sA;
		p_data[11] = data_uint16.sB;
		p_data[12] = data_uint16.sC;
		p_data[13] = data_uint16.sD;
		p_data[14] = data_uint16.sE;
		p_data[15] = data_uint16.sF;

        write_channel_altera(chan[0], p_data[0]);
		write_channel_altera(chan[1], p_data[1]);
		write_channel_altera(chan[2], p_data[2]);
		write_channel_altera(chan[3], p_data[3]);
		write_channel_altera(chan[4], p_data[4]);
		write_channel_altera(chan[5], p_data[5]);
		write_channel_altera(chan[6], p_data[6]);
		write_channel_altera(chan[7], p_data[7]);
		write_channel_altera(chan[8], p_data[8]);
		write_channel_altera(chan[9], p_data[9]);
		write_channel_altera(chan[10], p_data[10]);
		write_channel_altera(chan[11], p_data[11]);
		write_channel_altera(chan[12], p_data[12]);
		write_channel_altera(chan[13], p_data[13]);
		write_channel_altera(chan[14], p_data[14]);
		write_channel_altera(chan[15], p_data[15]);
	}
}


__kernel
void Histogram_0(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[0]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_1(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[1]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_2(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[2]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_3(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[3]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_4(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[4]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_5(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[5]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_6(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[6]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_7(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[7]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_8(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[8]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_9(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[9]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_10(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[10]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_11(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[11]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_12(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[12]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_13(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[13]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_14(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[14]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}

__kernel
void Histogram_15(int bins, int n_tasks,
    __global unsigned int *histo, __local unsigned int *l_histo) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int pos = tx; pos < bins; pos += bD) {
        l_histo[pos] = 0;
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

	int size = n_tasks / 16;
    for(int i = bx; i < size; i += gD) {
    
        unsigned int d = read_channel_altera(chan[15]);
        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}