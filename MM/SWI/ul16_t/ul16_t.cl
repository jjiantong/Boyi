

__kernel 
void matrixMult( // Input and output matrices
                 __global float *restrict C,
                 __global float *A,
                 __global float *B, 
                 // Widths of matrices.
                 int A_width, int C_width, int C_height)
{
	for (int i = 0; i < C_height; i ++){
		for (int j = 0; j < C_width; j ++){
			float running_sum = 0.0f;
			#pragma unroll 16
			for (int k = 0; k < A_width; k++){
				running_sum += A[i * A_width + k] *	B[j * C_width + k];		
			}
			C[i * C_width + j] = running_sum;
		}
	}
}
