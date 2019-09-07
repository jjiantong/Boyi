#ifndef SIMD_WORK_ITEMS
#define SIMD_WORK_ITEMS 2 // default value
#endif

#ifndef BLOCK_SIZE
#define BLOCK_SIZE 64 // default value
#endif


__kernel 
__attribute((reqd_work_group_size(BLOCK_SIZE,BLOCK_SIZE,1)))
__attribute((num_simd_work_items(SIMD_WORK_ITEMS)))
void matrixMult( // Input and output matrices
                 __global float *restrict C,
                 __global float *A,
                 __global float *B, 
                 // Widths of matrices.
                 int A_width, int B_width)
{
    // Local storage for a block of input matrices A and B
    __local float A_local[BLOCK_SIZE][BLOCK_SIZE];
    __local float B_local[BLOCK_SIZE][BLOCK_SIZE];

    // Block index
    int block_x = get_group_id(0);
    int block_y = get_group_id(1);

    // Local ID index (offset within a block)
    int local_x = get_local_id(0);
    int local_y = get_local_id(1);

    // Compute loop bounds
    int a_start = A_width * BLOCK_SIZE * block_y;
    int a_end   = a_start + A_width - 1;
    int b_start = BLOCK_SIZE * block_x;

    float running_sum = 0.0f;

    // Compute the matrix multiplication result for this output element. Each
    // loop iteration processes one block of the matrix.
    for (int a = a_start, b = b_start; a <= a_end; a += BLOCK_SIZE, b += (BLOCK_SIZE * B_width))
    {
        // Load the matrices to local memory. Note that the (x, y) indices
        // are swapped for A_local and B_local. This affects the reads from
        // A_local and B_local below and result in more efficient hardware.
        //
        // This is actually an optimization that the compiler can perform,
        // but is shown here for illustration purposes.
        A_local[local_y][local_x] = A[a + A_width * local_y + local_x];
        B_local[local_x][local_y] = B[b + B_width * local_y + local_x];
	
        // Wait for the entire block to be loaded.
        barrier(CLK_LOCAL_MEM_FENCE);

        // Do the dot product accumulation within this block. Fully unroll the loop.
        // As a result of the swap of indices above, memory accesses to
        // A_local and B_local are very efficient because each loop iteration
        // accesses consecutive elements. This can be seen by unrolling the
        // loop and analyzing the regions that are loaded:
        //  A_local[local_y][0..BLOCK_SIZE-1] and
        //  B_local[local_x][0..BLOCK_SIZE-1]
        #pragma unroll
        for (int k = 0; k < BLOCK_SIZE; ++k)
        {
            running_sum += A_local[local_y][k] * B_local[local_x][k];
        }

        // Wait for the block to be fully consumed before loading the next
        // block.
        barrier(CLK_LOCAL_MEM_FENCE);
    }

    // Store result in matrix C
    C[get_global_id(1) * get_global_size(0) + get_global_id(0)] = running_sum;
}
