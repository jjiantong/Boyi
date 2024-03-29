

__kernel 
void matrixMult( // Input and output matrices
                 __global float *restrict C,
                 __global float *A,
                 __global float *B, 
                 // Widths of matrices.
                 int A_width, int C_width, int C_height)
{
	for (int i = 0; i < C_height; i ++){
		
		float tA[1024];
		for (int k = 0; k < A_width; k++)
			tA[k] = A[i * A_width + k];

		for (int j = 0; j < C_width; j ++){
			float running_sum = 0.0f;
			for (int k = 0; k < A_width; k++){
				running_sum += tA[k] *	B[k * C_width + j];		
			}
			C[i * C_width + j] = running_sum;
		}
	}
}
