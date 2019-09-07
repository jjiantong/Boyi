#define L_BLOCK_SIZE 512

/*
 * ScanLargeArrays_kernel : Scan is done for each block and the sum of each
 * block is stored in separate array (sumBuffer). SumBuffer is scanned
 * and results are added to every value of next corresponding block to
 * compute the scan of a large array.(not limited to 2*MAX_GROUP_SIZE)
 * Scan uses a balanced tree algorithm. See Belloch, 1990 "Prefix Sums
 * and Their Applications"
 * @param output output data 
 * @param input  input data
 * @param block_size  size of local memory used in the kernel
 * @param sumBuffer   sum of blocks
 */

__kernel 
void ScanLargeArrays_kernel(__global int *restrict output,
               				__global int *restrict input,
							const uint block_size,					
							__global int *restrict sumBuffer) 
			
{
	int tid = get_local_id(0);
	int gid = get_global_id(0);
	int bid = get_group_id(0);

	__local int block[L_BLOCK_SIZE];
	
	/* Cache the computational window in shared memory */
	block[2*tid]     = input[2*gid];
	block[2*tid + 1] = input[2*gid + 1];

	int offset = 1;    	

    /* build the sum in place up the tree */
	for(int d = block_size>>1; d > 0; d >>=1)
	{
		barrier(CLK_LOCAL_MEM_FENCE);
		
		if(tid<d)
		{
			int ai = offset*(2*tid + 1) - 1;
			int bi = offset*(2*tid + 2) - 1;
			
			block[bi] += block[ai];
		}
		offset *= 2;
	}
	barrier(CLK_LOCAL_MEM_FENCE);
		
    /* store the value in sum buffer before making it to 0 */ 	
	sumBuffer[bid] = block[block_size - 1];

	barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
	
    /* scan back down the tree */

    /* clear the last element */
	block[block_size - 1] = 0;	

    /* traverse down the tree building the scan in the place */
	for(int d = 1; d < block_size ; d *= 2)
	{
		offset >>=1;
		barrier(CLK_LOCAL_MEM_FENCE);
		
		if(tid < d)
		{
			int ai = offset*(2*tid + 1) - 1;
			int bi = offset*(2*tid + 2) - 1;
			
			int t = block[ai];
			block[ai] = block[bi];
			block[bi] += t;
		}
	}	
	barrier(CLK_LOCAL_MEM_FENCE);	

    /*write the results back to global memory */
	{
		output[2*gid]     = block[2*tid];
		output[2*gid + 1] = block[2*tid + 1];
	}
}

__kernel 
void prefixSum_kernel(__global int * restrict output, 
					  __global int *restrict input, 
					  const uint length)
{
	int tid = get_local_id(0);
    
	__local int block[L_BLOCK_SIZE];
	
    /* Cache the computational window in shared memory */
	block[2*tid]     = input[2*tid];
	block[2*tid + 1] = input[2*tid + 1];

	int offset = 1;

    /* build the sum in place up the tree */
	for(int d = length>>1; d > 0; d >>=1)
	{
		barrier(CLK_LOCAL_MEM_FENCE);
		
		if(tid<d)
		{
			int ai = offset*(2*tid + 1) - 1;
			int bi = offset*(2*tid + 2) - 1;
			
			block[bi] += block[ai];
		}
		offset *= 2;
	}

    /* scan back down the tree */

    /* clear the last element */
	if(tid == 0)
	{
		block[length - 1] = 0;
	}

    /* traverse down the tree building the scan in the place */
	for(int d = 1; d < length ; d *= 2)
	{
		offset >>=1;
		barrier(CLK_LOCAL_MEM_FENCE);
		
		if(tid < d)
		{
			int ai = offset*(2*tid + 1) - 1;
			int bi = offset*(2*tid + 2) - 1;
			
			int t = block[ai];
			block[ai] = block[bi];
			block[bi] += t;
		}
	}
	
	barrier(CLK_LOCAL_MEM_FENCE);

    /*write the results back to global memory */
	output[2*tid]     = block[2*tid];
	output[2*tid + 1] = block[2*tid + 1];
}


__kernel
void blockAddition_kernel(__global int* restrict input, __global int* restrict output)
{	
	int globalId = get_global_id(0);
	int groupId = get_group_id(0);
	int localId = get_local_id(0);

	__local int value[1];

	/* Only 1 thread of a group will read from global buffer */
	if(localId == 0)
	{
		value[0] = input[groupId];
	}
	barrier(CLK_LOCAL_MEM_FENCE);

	output[globalId*2] += value[0];
	output[globalId*2 + 1] += value[0];
}

