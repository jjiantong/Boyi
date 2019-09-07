#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_fp64 : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
#include "support/partitioner.h"

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
__attribute((num_compute_units(2)))
void Padding_kernel(int n, int m, int pad, int n_tasks, float alpha, __global Taa *matrix_out, __global Taa *matrix,
    __global int *flags) {

    Partitioner p = partitioner_create(n_tasks, alpha);

    const int matrix_size = m * (n + pad);
    const int matrix_size_align =
        (matrix_size + get_local_size(0) * REGS - 1) / (get_local_size(0) * REGS) * (get_local_size(0) * REGS);

    for(int my_s = gpu_first(&p); gpu_more(&p); my_s = gpu_next(&p)) {

        // Declare on-chip memory
        Taa   reg[REGS];
        int pos      = matrix_size_align - 1 - (my_s * REGS * get_local_size(0) + get_local_id(0));
        int my_s_row = pos / (n + pad);
        int my_x     = pos % (n + pad);
        int pos2     = my_s_row * n + my_x;

        // Load in on-chip memory
        for(int j = 0; j < REGS; j++) {
            if(pos2 >= 0 && my_x < n && pos2 < matrix_size)
                reg[j] = matrix[pos2];
            else
                reg[j] = 0;
            pos -= get_local_size(0);
            my_s_row = pos / (n + pad);
            my_x     = pos % (n + pad);
            pos2     = my_s_row * n + my_x;
        }

        barrier(CLK_LOCAL_MEM_FENCE);

        // Set global synch
        if(get_local_id(0) == 0) {
            
            while(atomic_add(&flags[my_s], 0) == 0) {
            }
            atomic_add(&flags[my_s + 1], 1);
        }
        barrier(CLK_GLOBAL_MEM_FENCE | CLK_LOCAL_MEM_FENCE);

        pos = matrix_size_align - 1 - (my_s * REGS * get_local_size(0) + get_local_id(0));

        // Store to global memory
        for(int j = 0; j < REGS; j++) {
            if(pos >= 0 && pos < matrix_size)
                matrix_out[pos] = reg[j];
            pos -= get_local_size(0);
        }
    }
}
