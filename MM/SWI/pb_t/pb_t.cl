#define BH 1024
#define BW 1024

__kernel 
void matrixMult( // Input and output matrices
                 __global float *restrict C,
                 __global float *A,
                 __global float *B, 
                 // Widths of matrices.
                 int A_width, int C_width, int C_height)
{
	float l_b[BH * BW];
	for (int i = 0; i < BH; i++){
		for (int j = 0; j < BW; j++){
			l_b[j * C_width + i] = B[i * C_width +j];
		}
	}

	for (int i = 0; i < C_height; i ++){
		for (int j = 0; j < C_width; j ++){
			float running_sum = 0.0f;
			for (int k = 0; k < A_width; k++){
				running_sum += A[i * A_width + k] *	l_b[j * C_width + k];	
			}
			C[i * C_width + j] = running_sum;
		}
	}
}
