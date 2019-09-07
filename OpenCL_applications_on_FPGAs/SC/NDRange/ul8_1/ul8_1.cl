#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
#include "support/partitioner.h"

// Device auxiliary functions
void reduce(__local int *l_count, int local_cnt, __local int *l_data) {
    const int tid       = get_local_id(0);
    const int localSize = get_local_size(0);
    // load shared mem
    l_data[tid] = local_cnt;
    barrier(CLK_LOCAL_MEM_FENCE);
    // do reduction in shared mem
    for(int s = localSize >> 1; s > 0; s >>= 1) {
        if(tid < s) {
            l_data[tid] += l_data[tid + s];
        }
        barrier(CLK_LOCAL_MEM_FENCE);
    }
    // write result for this block to global mem
    if(tid == 0)
        *l_count = l_data[0];
}

int block_binary_prefix_sums(__local int *l_count, int x, __local int *l_data) {
    l_data[get_local_id(0)] = x;
    const int length     = get_local_size(0);
    // Build up tree
    int offset = 1;
    for(int l = length >> 1; l > 0; l >>= 1) {
        barrier(CLK_LOCAL_MEM_FENCE);
        if(get_local_id(0) < l) {
            int ai = offset * (2 * get_local_id(0) + 1) - 1;
            int bi = offset * (2 * get_local_id(0) + 2) - 1;
            l_data[bi] += l_data[ai];
        }
        offset <<= 1;
    }
	
    if(offset < length) {
        offset <<= 1;
    }	
    // Build down tree
    int maxThread = offset >> 1;
    for(int d = 0; d < maxThread; d <<= 1) {
        d += 1;
        offset >>= 1;
        barrier(CLK_LOCAL_MEM_FENCE);
        if(get_local_id(0) < d) {
            int ai = offset * (get_local_id(0) + 1) - 1;
            int bi = ai + (offset >> 1);
            l_data[bi] += l_data[ai];
        }
    }
    barrier(CLK_LOCAL_MEM_FENCE);
    int output = l_data[get_local_id(0)] + *l_count - x;
    barrier(CLK_LOCAL_MEM_FENCE);
    if(get_local_id(0) == get_local_size(0) - 1)
        *l_count += l_data[get_local_id(0)];

    return output;
}

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel void StreamCompaction_kernel(int size, int value, __local int *l_data, __local int *l_count, int n_tasks, float alpha, __global int *output, __global int *input,
    __global int *flags) {

    Partitioner p = partitioner_create(n_tasks, alpha);

    for(int my_s = gpu_first(&p); gpu_more(&p); my_s = gpu_next(&p)) {

        if(get_local_id(0) == 0) {
            l_count[0] = 0;
        }
        barrier(CLK_LOCAL_MEM_FENCE);

        int local_cnt = 0;
        // Declare on-chip memory
        int reg[REGS];
        int pos = (my_s - p.cut) * REGS * get_local_size(0) + get_local_id(0);
		// Load in on-chip memory
		#pragma unroll 8
        for(int j = 0; j < REGS; j++) {
            if(pos < size) {
                reg[j] = input[pos];
                if(reg[j] != value)
                    local_cnt++;
            } else
                reg[j] = value;
            pos += get_local_size(0);
        }
        reduce(&l_count[0], local_cnt, &l_data[0]);

        // Set global synch
        if(get_local_id(0) == 0) {
            int p_count;
            while((p_count = atomic_add(&flags[my_s], 0)) == 0) {
            }
            atomic_add(&flags[my_s + 1], p_count + l_count[0]);
            l_count[0] = p_count - 1;
        }
        barrier(CLK_GLOBAL_MEM_FENCE | CLK_LOCAL_MEM_FENCE);

		// Store to global memory
        for(int j = 0; j < REGS; j++) {
            pos = block_binary_prefix_sums(&l_count[0], (int)((reg[j] != value) ? 1 : 0), &l_data[0]);
            if(reg[j] != value) {
                output[pos] = reg[j];
            }
        }
    }
}
