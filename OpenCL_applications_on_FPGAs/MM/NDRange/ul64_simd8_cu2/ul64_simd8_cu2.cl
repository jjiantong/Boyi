#ifndef SIMD_WORK_ITEMS
#define SIMD_WORK_ITEMS 8 // default value
#endif

#ifndef BLOCK_SIZE
#define BLOCK_SIZE 64 // default value
#endif


__kernel 
__attribute((num_compute_units(2)))
__attribute((reqd_work_group_size(BLOCK_SIZE,BLOCK_SIZE,1)))
__attribute((num_simd_work_items(SIMD_WORK_ITEMS)))
void matrixMult( // Input and output matrices
                 __global float *restrict C,
                 __global float *A,
                 __global float *B, 
                 // Widths of matrices.
                 int A_width, int B_width)
{
    __local float A_local[BLOCK_SIZE][BLOCK_SIZE];
    __local float B_local[BLOCK_SIZE][BLOCK_SIZE];

    int block_x = get_group_id(0);
    int block_y = get_group_id(1);

    int local_x = get_local_id(0);
    int local_y = get_local_id(1);

    int a_start = A_width * BLOCK_SIZE * block_y;
    int a_end   = a_start + A_width - 1;
    int b_start = BLOCK_SIZE * block_x;

    float running_sum = 0.0f;

    for (int a = a_start, b = b_start; a <= a_end; a += BLOCK_SIZE, b += (BLOCK_SIZE * B_width))
    {
        A_local[local_y][local_x] = A[a + A_width * local_y + local_x];
        B_local[local_x][local_y] = B[b + B_width * local_y + local_x];
	
        barrier(CLK_LOCAL_MEM_FENCE);

        #pragma unroll
        for (int k = 0; k < BLOCK_SIZE; ++k)
        {
            running_sum += A_local[local_y][k] * B_local[local_x][k];
        }

        barrier(CLK_LOCAL_MEM_FENCE);
    }

    C[get_global_id(1) * get_global_size(0) + get_global_id(0)] = running_sum;
}
