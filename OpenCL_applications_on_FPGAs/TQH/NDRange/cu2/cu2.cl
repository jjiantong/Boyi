#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel
__attribute((num_compute_units(2)))
void TQHistogram_gpu(__global task_t *queue, __global int *data, __global int *histo, int offset,
    __local task_t *t, int gpuQueueSize, __global int *consumed, __local int *next, __local int *l_histo,
    int frame_size, int n_bins) {

    const int tid       = get_local_id(0);
    const int tileid    = get_group_id(0);
    const int tile_size = get_local_size(0);

	__local int iv1[1];
	__local int iv2[1];
	__local int iv3[1];

    // Fetch task
    if(tid == 0) {
        *next = atomic_add(consumed, 1);
        t->id = queue[*next].id;
        t->op = queue[*next].op;
		iv1[0]= t->id - offset;
		iv2[0]= iv1[0] * frame_size;
		iv3[0]= iv1[0] * n_bins;
    }
    barrier(CLK_LOCAL_MEM_FENCE); 

    while(*next < gpuQueueSize) {
        // Compute task
        if(t->op == SIGNAL_WORK_KERNEL) {
            // Reset local histogram
            for(int i = tid; i < n_bins; i += tile_size) {
                l_histo[i] = 0;
            }
            barrier(CLK_LOCAL_MEM_FENCE);

            for(int i = tid; i < frame_size; i += tile_size) {
                //int value = (data[(t->id - offset) * frame_size + i] * n_bins) >> 8;
				int value = (data[*iv2 + i] * n_bins) >> 8;
                
				atomic_add(&l_histo[value], 1);
            }

            barrier(CLK_LOCAL_MEM_FENCE);
            // Store in global memory
            for(int i = tid; i < n_bins; i += tile_size) {
                //histo[(t->id - offset) * n_bins + i] = l_histo[i];
				histo[*iv3 + i] = l_histo[i];            
			}
        }

        if(tid == 0) {
            *next = atomic_add(consumed, 1);
            // Fetch task
            t->id = queue[*next].id;
            t->op = queue[*next].op;
			iv1[0]= t->id - offset;
			iv2[0]= iv1[0] * frame_size;
			iv3[0]= iv1[0] * n_bins;
        }
        barrier(CLK_LOCAL_MEM_FENCE);
    }
}
