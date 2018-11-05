#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

	channel unsigned int chan;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(int n_tasks, __global unsigned int *data) {
    
    const int bx = get_group_id(0);
    const int tx = get_local_id(0);
    const int bD = get_local_size(0);
    const int gD = get_num_groups(0);

    for(int i = bx; i < n_tasks; i += gD) 
        write_channel_altera(chan, data[i * bD + tx]);
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

    for(int i = bx; i < n_tasks; i += gD) {
    
        unsigned int d = read_channel_altera(chan);

        atomic_add(&l_histo[((d * bins) >> 12)], 1);
    }

    barrier(CLK_LOCAL_MEM_FENCE); // Intra-block synchronization

    for(int pos = tx; pos < bins; pos += bD) {
        atomic_add(histo + pos, l_histo[pos]);
    }
}