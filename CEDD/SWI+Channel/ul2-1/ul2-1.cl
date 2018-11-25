#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
__constant float gaus[3][3] = {{0.0625f, 0.125f, 0.0625f}, {0.1250f, 0.250f, 0.1250f}, {0.0625f, 0.125f, 0.0625f}};
__constant int   sobx[3][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
__constant int   soby[3][3] = {{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};


	channel unsigned char chan[2];

__kernel void gaussian_kernel(__global unsigned char *data, __global unsigned char *out,
								int cols, int rows) {
    
	for (int row = 1; row < rows - 1; row ++){
		for (int col = 1; col < cols / 2; col ++){

			int sum0 = 0;
			int sum1 = 0;
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int pos0 = row * cols + col0;
			int pos1 = row * cols + col1;

			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++){
					sum0 += gaus[i][j] * data[(i + row - 1) * cols + j + col0 - 1];
					sum1 += gaus[i][j] * data[(i + row - 1) * cols + j + col1 - 1];
				}
			}
			out[pos0] =  min(255, max(0, sum0));
			out[pos1] =  min(255, max(0, sum1));
		}
	}
}


__kernel 
void sobel_kernel(__global unsigned char *data, __global unsigned char *out, __global unsigned char *theta,
					int cols, int rows) {

	for (int row = 1; row < rows - 1; row ++){
		for (int col = 1; col < cols / 2; col ++){
			
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int pos0 = row * cols + col0;
			int pos1 = row * cols + col1;

			const float PI = 3.14159265;
			float sumx0 = 0, sumy0 = 0, angle0 = 0;
			float sumx1 = 0, sumy1 = 0, angle1 = 0;

			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++){
					sumx0 += sobx[i][j] * data[(i + row - 1) * cols + j + col0 - 1];
					sumy0 += soby[i][j] * data[(i + row - 1) * cols + j + col0 - 1];
					sumx1 += sobx[i][j] * data[(i + row - 1) * cols + j + col1 - 1];
					sumy1 += soby[i][j] * data[(i + row - 1) * cols + j + col1 - 1];
				}
			}

			out[pos0] =  min(255, max(0, (int)hypot(sumx0, sumy0)));
			out[pos1] =  min(255, max(0, (int)hypot(sumx1, sumy1)));

			angle0 = atan2(sumy0, sumx0);
			angle1 = atan2(sumy1, sumx1);

			if(angle0 <= -7 * PI / 8)
				theta[pos0] = 0;
			else if(angle0 <= -5 * PI / 8)
				theta[pos0] = 45;
			else if(angle0 <= -3 * PI / 8)
				theta[pos0] = 90;
			else if(angle0 <= - PI / 8)
				theta[pos0] = 135;
			else if(angle0 <= PI / 8)
				theta[pos0] = 0;
			else if(angle0 <= 3 * PI / 8)
				theta[pos0] = 45;
			else if(angle0 <= 5 * PI / 8)
				theta[pos0] = 90;
			else if(angle0 <= 7 * PI / 8)
				theta[pos0] = 135;
			else
				theta[pos0] = 0; 

			if(angle1 <= -7 * PI / 8)
				theta[pos1] = 0;
			else if(angle1 <= -5 * PI / 8)
				theta[pos1] = 45;
			else if(angle1 <= -3 * PI / 8)
				theta[pos1] = 90;
			else if(angle1 <= - PI / 8)
				theta[pos1] = 135;
			else if(angle1 <= PI / 8)
				theta[pos1] = 0;
			else if(angle1 <= 3 * PI / 8)
				theta[pos1] = 45;
			else if(angle1 <= 5 * PI / 8)
				theta[pos1] = 90;
			else if(angle1 <= 7 * PI / 8)
				theta[pos1] = 135;
			else
				theta[pos1] = 0; 

		}
	}
}


__kernel void non_max_supp_kernel(	__global unsigned char *data, 
									__global unsigned char *theta, int cols, int rows) {

	for (int row = 1; row < rows - 1; row ++){
		for (int col = 1; col < cols / 2; col ++){
			
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int pos0 = row * cols + col0;
			int pos1 = row * cols + col1;

			unsigned char my_magnitude0 = data[pos0];
			unsigned char my_magnitude1 = data[pos1];
			unsigned char out0, out1;

			switch(theta[pos0]) {
				case 0:
					if(my_magnitude0 <= data[pos0 + 1] || // east
						my_magnitude0 <= data[pos0 - 1]) // west
					{
						out0 = 0;
					}
					else {
						out0 = my_magnitude0;
					}
					break;

				case 45:
					if(my_magnitude0 <= data[(row - 1) * cols + col0 + 1] || // north east
						my_magnitude0 <= data[(row + 1) * cols + col0 - 1]) // south west
					{
						out0 = 0;
					}
					else {
						out0 = my_magnitude0;
					}
					break;

				case 90:
					if(my_magnitude0 <= data[(row - 1) * cols + col0] || // north
						my_magnitude0 <= data[(row + 1) * cols + col0]) // south
					{
						out0 = 0;
					}
					else {
						out0 = my_magnitude0;
					}
					break;

				case 135:
					if(my_magnitude0 <= data[(row - 1) * cols + col0 - 1] || // north west
						my_magnitude0 <= data[(row + 1) * cols + col0 + 1]) // south east
					{
						out0 = 0;
					}
					else {
						out0 = my_magnitude0;
					}
					break;

				default: out0 = my_magnitude0; break;
			
			}


			switch(theta[pos1]) {
				case 0:
					if(my_magnitude1 <= data[pos1 + 1] || // east
						my_magnitude1 <= data[pos1 - 1]) // west
					{
						out1 = 0;
					}
					else {
						out1 = my_magnitude1;
					}
					break;

				case 45:
					if(my_magnitude1 <= data[(row - 1) * cols + col1 + 1] || // north east
						my_magnitude1 <= data[(row + 1) * cols + col1 - 1]) // south west
					{
						out1 = 0;
					}
					else {
						out1 = my_magnitude1;
					}
					break;

				case 90:
					if(my_magnitude1 <= data[(row - 1) * cols + col1] || // north
						my_magnitude1 <= data[(row + 1) * cols + col1]) // south
					{
						out1 = 0;
					}
					else {
						out1 = my_magnitude1;
					}
					break;

				case 135:
					if(my_magnitude1 <= data[(row - 1) * cols + col1 - 1] || // north west
						my_magnitude1 <= data[(row + 1) * cols + col1 + 1]) // south east
					{
						out1 = 0;
					}
					else {
						out1 = my_magnitude1;
					}
					break;

				default: out1 = my_magnitude1; break;
			
			}

			write_channel_altera(chan[0], out0);
			write_channel_altera(chan[1], out1);

		}

	}
}


__kernel void hyst_kernel(__global unsigned char *out, int cols, int rows) {
    
	for (int row = 1; row < rows - 1; row ++){
		for (int col = 1; col < cols / 2; col ++){

			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int pos0 = row * cols + col0;
			int pos1 = row * cols + col1;

			float lowThresh  = 10;
			float highThresh = 70;
			const unsigned char EDGE = 255;

			unsigned char magnitude0 = read_channel_altera(chan[0]);
			unsigned char magnitude1 = read_channel_altera(chan[1]);

			if(magnitude0 >= highThresh)
				out[pos0] = EDGE;
			else if(magnitude0 <= lowThresh)
				out[pos0] = 0;
			else {
				float med = (highThresh + lowThresh) / 2;

				if(magnitude0 >= med)
					out[pos0] = EDGE;
				else
					out[pos0] = 0;
			}

			if(magnitude1 >= highThresh)
				out[pos1] = EDGE;
			else if(magnitude1 <= lowThresh)
				out[pos1] = 0;
			else {
				float med = (highThresh + lowThresh) / 2;

				if(magnitude1 >= med)
					out[pos1] = EDGE;
				else
					out[pos1] = 0;
			}
			
		}
	}

}
