#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
__constant float gaus[3][3] = {{0.0625f, 0.125f, 0.0625f}, {0.1250f, 0.250f, 0.1250f}, {0.0625f, 0.125f, 0.0625f}};
__constant int   sobx[3][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
__constant int   soby[3][3] = {{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};

// https://github.com/smskelley/canny-opencl
// Gaussian Kernel
// data: image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out: image output data (8B1C)
__kernel void gaussian_kernel(	__global unsigned char *data, __global unsigned char *out,
								int cols, int rows) {
    
	for (int row = 1; row < rows - 1; row ++){
		#pragma unroll 2
		for (int col = 1; col < cols - 1; col ++){

			int sum = 0;
			int pos = row * cols + col;

			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++)
					sum += gaus[i][j] * data[(i + row - 1) * cols + j + col - 1];
			}
			out[pos] =  min(255, max(0, sum));
		}
	}
}


// Sobel kernel. Apply sobx and soby separately, then find the sqrt of their
//               squares.
// data:  image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out:   image output data (8B1C)
// theta: angle output data
__kernel 
void sobel_kernel(	__global unsigned char *data, __global unsigned char *out, __global unsigned char *theta,
					int cols, int rows) {
    // collect sums separately. we're storing them into floats because that
    // is what hypot and atan2 will expect.

	for (int row = 1; row < rows - 1; row ++){
		#pragma unroll 2
		for (int col = 1; col < cols - 1; col ++){
			
			int pos = row * cols + col;

			const float PI = 3.14159265;
			float sumx = 0, sumy = 0, angle = 0;

			// find x and y derivatives
			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++){
					sumx += sobx[i][j] * data[(i + row - 1) * cols + j + col - 1];
					sumy += soby[i][j] * data[(i + row - 1) * cols + j + col - 1];
				}
			}

			// The output is now the square root of their squares, but they are
			// constrained to 0 <= value <= 255. Note that hypot is a built in function
			// defined as: hypot(x,y) = sqrt(x*x, y*y).			
			out[pos] =  min(255, max(0, (int)hypot(sumx, sumy)));

			// Compute the direction angle theta in radians
			// atan2 has a range of (-PI, PI) degrees
			angle = atan2(sumy, sumx);

			// Round the angle to one of four possibilities: 0, 45, 90, 135 degrees
			// then store it in the theta buffer at the proper position
			//theta[pos] = ((int)(degrees(angle * (PI/8) + PI/8-0.0001) / 45) * 45) % 180;
			if(angle <= -7 * PI / 8)
				theta[pos] = 0;
			else if(angle <= -5 * PI / 8)
				theta[pos] = 45;
			else if(angle <= -3 * PI / 8)
				theta[pos] = 90;
			else if(angle <= - PI / 8)
				theta[pos] = 135;
			else if(angle <= PI / 8)
				theta[pos] = 0;
			else if(angle <= 3 * PI / 8)
				theta[pos] = 45;
			else if(angle <= 5 * PI / 8)
				theta[pos] = 90;
			else if(angle <= 7 * PI / 8)
				theta[pos] = 135;
			else
				theta[pos] = 0; 
		}
	}
}


// Non-maximum Supression Kernel
// data: image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out: image output data (8B1C)
// theta: angle input data
__kernel void non_max_supp_kernel(__global unsigned char *data, __global unsigned char *out,
    __global unsigned char *theta, int cols, int rows) {

	for (int row = 1; row < rows - 1; row ++){
		#pragma unroll 2
		for (int col = 1; col < cols - 1; col ++){
			
			int pos = row * cols + col;
			unsigned char my_magnitude = data[pos];

			// The following variables are used to address the matrices more easily
			switch(theta[pos]) {
			// A gradient angle of 0 degrees = an edge that is North/South
			// Check neighbors to the East and West
			case 0:
				// supress me if my neighbor has larger magnitude
				if(my_magnitude <= data[pos + 1] || // east
					my_magnitude <= data[pos - 1]) // west
				{
					out[pos] = 0;
				}
				// otherwise, copy my value to the output buffer
				else {
					out[pos] = my_magnitude;
				}
				break;

			// A gradient angle of 45 degrees = an edge that is NW/SE
			// Check neighbors to the NE and SW
			case 45:
				// supress me if my neighbor has larger magnitude
				if(my_magnitude <= data[(row - 1) * cols + col + 1] || // north east
					my_magnitude <= data[(row + 1) * cols + col - 1]) // south west
				{
					out[pos] = 0;
				}
				// otherwise, copy my value to the output buffer
				else {
					out[pos] = my_magnitude;
				}
				break;

			// A gradient angle of 90 degrees = an edge that is E/W
			// Check neighbors to the North and South
			case 90:
				// supress me if my neighbor has larger magnitude
				if(my_magnitude <= data[(row - 1) * cols + col] || // north
					my_magnitude <= data[(row + 1) * cols + col]) // south
				{
					out[pos] = 0;
				}
				// otherwise, copy my value to the output buffer
				else {
					out[pos] = my_magnitude;
				}
				break;

			// A gradient angle of 135 degrees = an edge that is NE/SW
			// Check neighbors to the NW and SE
			case 135:
				// supress me if my neighbor has larger magnitude
				if(my_magnitude <= data[(row - 1) * cols + col - 1] || // north west
					my_magnitude <= data[(row + 1) * cols + col + 1]) // south east
				{
					out[pos] = 0;
				}
				// otherwise, copy my value to the output buffer
				else {
					out[pos] = my_magnitude;
				}
				break;

			default: out[pos] = my_magnitude; break;
			}
		}
	}
}


// Hysteresis Threshold Kernel
// data: image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out: image output data (8B1C)
__kernel void hyst_kernel(__global unsigned char *data, __global unsigned char *out, int cols, int rows) {
    
	for (int row = 1; row < rows - 1; row ++){
		#pragma unroll 2
		for (int col = 1; col < cols - 1; col ++){

			int pos = row * cols + col;

			float lowThresh  = 10;
			float highThresh = 70;
			const unsigned char EDGE = 255;

			unsigned char magnitude = data[pos];

			if(magnitude >= highThresh)
				out[pos] = EDGE;
			else if(magnitude <= lowThresh)
				out[pos] = 0;
			else {
				float med = (highThresh + lowThresh) / 2;

				if(magnitude >= med)
					out[pos] = EDGE;
				else
					out[pos] = 0;
			}
			
		}
	}

}
