#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"
__constant float gaus[3][3] = {{0.0625f, 0.125f, 0.0625f}, {0.1250f, 0.250f, 0.1250f}, {0.0625f, 0.125f, 0.0625f}};
__constant int   sobx[3][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
__constant int   soby[3][3] = {{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};

__kernel void gaussian_kernel(__global unsigned char *data, __global unsigned char *out,
								int cols, int rows) {
    
	for (int row = 1; row < rows / 2; row ++){
		for (int col = 1; col < cols / 2; col ++){

			int sum0 = 0;
			int sum1 = 0;
			int sum2 = 0;
			int sum3 = 0;
			int row0 = row * 2 - 1;
			int row1 = row * 2;
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int pos0 = row0 * cols + col0;
			int pos1 = row0 * cols + col1;
			int pos2 = row1 * cols + col0;
			int pos3 = row1 * cols + col1;

			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++){
					sum0 += gaus[i][j] * data[(i + row0 - 1) * cols + j + col0 - 1];
					sum1 += gaus[i][j] * data[(i + row0 - 1) * cols + j + col1 - 1];
					sum2 += gaus[i][j] * data[(i + row1 - 1) * cols + j + col0 - 1];
					sum3 += gaus[i][j] * data[(i + row1 - 1) * cols + j + col1 - 1];
				}
			}
			out[pos0] =  min(255, max(0, sum0));
			out[pos1] =  min(255, max(0, sum1));
			out[pos2] =  min(255, max(0, sum2));
			out[pos3] =  min(255, max(0, sum3));
		}
	}
}


__kernel 
void sobel_kernel(__global unsigned char *data, __global unsigned char *out, __global unsigned char *theta,
					int cols, int rows) {

	for (int row = 1; row < rows / 2; row ++){
		for (int col = 1; col < cols / 2; col ++){
			
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int row0 = row * 2 - 1;
			int row1 = row * 2;
			int pos0 = row0 * cols + col0;
			int pos1 = row0 * cols + col1;
			int pos2 = row1 * cols + col0;
			int pos3 = row1 * cols + col1;

			const float PI = 3.14159265;
			float sumx0 = 0, sumy0 = 0, angle0 = 0;
			float sumx1 = 0, sumy1 = 0, angle1 = 0;
			float sumx2 = 0, sumy2 = 0, angle2 = 0;
			float sumx3 = 0, sumy3 = 0, angle3 = 0;

			for (int i = 0; i < 3; i ++){
				for (int j = 0; j < 3; j ++){
					sumx0 += sobx[i][j] * data[(i + row0 - 1) * cols + j + col0 - 1];
					sumy0 += soby[i][j] * data[(i + row0 - 1) * cols + j + col0 - 1];
					sumx1 += sobx[i][j] * data[(i + row0 - 1) * cols + j + col1 - 1];
					sumy1 += soby[i][j] * data[(i + row0 - 1) * cols + j + col1 - 1];
					sumx2 += sobx[i][j] * data[(i + row1 - 1) * cols + j + col0 - 1];
					sumy2 += soby[i][j] * data[(i + row1 - 1) * cols + j + col0 - 1];
					sumx3 += sobx[i][j] * data[(i + row1 - 1) * cols + j + col1 - 1];
					sumy3 += soby[i][j] * data[(i + row1 - 1) * cols + j + col1 - 1];
				}
			}

			out[pos0] =  min(255, max(0, (int)hypot(sumx0, sumy0)));
			out[pos1] =  min(255, max(0, (int)hypot(sumx1, sumy1)));
			out[pos2] =  min(255, max(0, (int)hypot(sumx2, sumy2)));
			out[pos3] =  min(255, max(0, (int)hypot(sumx3, sumy3)));

			angle0 = atan2(sumy0, sumx0);
			angle1 = atan2(sumy1, sumx1);
			angle2 = atan2(sumy2, sumx2);
			angle3 = atan2(sumy3, sumx3);

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

			if(angle2 <= -7 * PI / 8)
				theta[pos2] = 0;
			else if(angle2 <= -5 * PI / 8)
				theta[pos2] = 45;
			else if(angle2 <= -3 * PI / 8)
				theta[pos2] = 90;
			else if(angle2 <= - PI / 8)
				theta[pos2] = 135;
			else if(angle2 <= PI / 8)
				theta[pos2] = 0;
			else if(angle2 <= 3 * PI / 8)
				theta[pos2] = 45;
			else if(angle2 <= 5 * PI / 8)
				theta[pos2] = 90;
			else if(angle2 <= 7 * PI / 8)
				theta[pos2] = 135;
			else
				theta[pos2] = 0; 

			if(angle3 <= -7 * PI / 8)
				theta[pos3] = 0;
			else if(angle3 <= -5 * PI / 8)
				theta[pos3] = 45;
			else if(angle3 <= -3 * PI / 8)
				theta[pos3] = 90;
			else if(angle3 <= - PI / 8)
				theta[pos3] = 135;
			else if(angle3 <= PI / 8)
				theta[pos3] = 0;
			else if(angle3 <= 3 * PI / 8)
				theta[pos3] = 45;
			else if(angle3 <= 5 * PI / 8)
				theta[pos3] = 90;
			else if(angle3 <= 7 * PI / 8)
				theta[pos3] = 135;
			else
				theta[pos3] = 0; 

		}
	}
}


__kernel void non_max_supp_kernel(__global unsigned char *data, __global unsigned char *out,
    __global unsigned char *theta, int cols, int rows) {

	for (int row = 1; row < rows / 2; row ++){
		for (int col = 1; col < cols / 2; col ++){
			
			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int row0 = row * 2 - 1;
			int row1 = row * 2;
			int pos0 = row0 * cols + col0;
			int pos1 = row0 * cols + col1;
			int pos2 = row1 * cols + col0;
			int pos3 = row1 * cols + col1;

			unsigned char my_magnitude0 = data[pos0];
			unsigned char my_magnitude1 = data[pos1];
			unsigned char my_magnitude2 = data[pos2];
			unsigned char my_magnitude3 = data[pos3];

			switch(theta[pos0]) {
			case 0:
				if(my_magnitude0 <= data[pos0 + 1] || // east
					my_magnitude0 <= data[pos0 - 1]) // west
				{
					out[pos0] = 0;
				}
				else {
					out[pos0] = my_magnitude0;
				}
				break;

			case 45:
				if(my_magnitude0 <= data[(row0 - 1) * cols + col0 + 1] || // north east
					my_magnitude0 <= data[(row0 + 1) * cols + col0 - 1]) // south west
				{
					out[pos0] = 0;
				}
				else {
					out[pos0] = my_magnitude0;
				}
				break;

			case 90:
				if(my_magnitude0 <= data[(row0 - 1) * cols + col0] || // north
					my_magnitude0 <= data[(row0 + 1) * cols + col0]) // south
				{
					out[pos0] = 0;
				}
				else {
					out[pos0] = my_magnitude0;
				}
				break;

			case 135:
				if(my_magnitude0 <= data[(row0 - 1) * cols + col0 - 1] || // north west
					my_magnitude0 <= data[(row0 + 1) * cols + col0 + 1]) // south east
				{
					out[pos0] = 0;
				}
				else {
					out[pos0] = my_magnitude0;
				}
				break;

			default: out[pos0] = my_magnitude0; break;
			}
			
			switch(theta[pos1]) {
			case 0:
				if(my_magnitude1 <= data[pos1 + 1] || // east
					my_magnitude1 <= data[pos1 - 1]) // west
				{
					out[pos1] = 0;
				}
				else {
					out[pos1] = my_magnitude1;
				}
				break;

			case 45:
				if(my_magnitude1 <= data[(row0 - 1) * cols + col1 + 1] || // north east
					my_magnitude1 <= data[(row0 + 1) * cols + col1 - 1]) // south west
				{
					out[pos1] = 0;
				}
				else {
					out[pos1] = my_magnitude1;
				}
				break;

			case 90:
				if(my_magnitude1 <= data[(row0 - 1) * cols + col1] || // north
					my_magnitude1 <= data[(row0 + 1) * cols + col1]) // south
				{
					out[pos1] = 0;
				}
				else {
					out[pos1] = my_magnitude1;
				}
				break;

			case 135:
				if(my_magnitude1 <= data[(row0 - 1) * cols + col1 - 1] || // north west
					my_magnitude1 <= data[(row0 + 1) * cols + col1 + 1]) // south east
				{
					out[pos1] = 0;
				}
				else {
					out[pos1] = my_magnitude1;
				}
				break;

			default: out[pos1] = my_magnitude1; break;
			}

			switch(theta[pos2]) {
			case 0:
				if(my_magnitude2 <= data[pos2 + 1] || // east
					my_magnitude2 <= data[pos2 - 1]) // west
				{
					out[pos2] = 0;
				}
				else {
					out[pos2] = my_magnitude2;
				}
				break;

			case 45:
				if(my_magnitude2 <= data[(row1 - 1) * cols + col0 + 1] || // north east
					my_magnitude2 <= data[(row1 + 1) * cols + col0 - 1]) // south west
				{
					out[pos2] = 0;
				}
				else {
					out[pos2] = my_magnitude2;
				}
				break;

			case 90:
				if(my_magnitude2 <= data[(row1 - 1) * cols + col0] || // north
					my_magnitude2 <= data[(row1 + 1) * cols + col0]) // south
				{
					out[pos2] = 0;
				}
				else {
					out[pos2] = my_magnitude2;
				}
				break;

			case 135:
				if(my_magnitude2 <= data[(row1 - 1) * cols + col0 - 1] || // north west
					my_magnitude2 <= data[(row1 + 1) * cols + col0 + 1]) // south east
				{
					out[pos2] = 0;
				}
				else {
					out[pos2] = my_magnitude2;
				}
				break;

			default: out[pos2] = my_magnitude2; break;
			}
			
			switch(theta[pos1]) {
			case 0:
				if(my_magnitude3 <= data[pos3 + 1] || // east
					my_magnitude3 <= data[pos3 - 1]) // west
				{
					out[pos3] = 0;
				}
				else {
					out[pos3] = my_magnitude3;
				}
				break;

			case 45:
				if(my_magnitude3 <= data[(row1 - 1) * cols + col1 + 1] || // north east
					my_magnitude3 <= data[(row1 + 1) * cols + col1 - 1]) // south west
				{
					out[pos3] = 0;
				}
				else {
					out[pos3] = my_magnitude3;
				}
				break;

			case 90:
				if(my_magnitude3 <= data[(row1 - 1) * cols + col1] || // north
					my_magnitude3 <= data[(row1 + 1) * cols + col1]) // south
				{
					out[pos3] = 0;
				}
				else {
					out[pos3] = my_magnitude3;
				}
				break;

			case 135:
				if(my_magnitude3 <= data[(row1 - 1) * cols + col1 - 1] || // north west
					my_magnitude3 <= data[(row1 + 1) * cols + col1 + 1]) // south east
				{
					out[pos3] = 0;
				}
				else {
					out[pos3] = my_magnitude3;
				}
				break;

			default: out[pos3] = my_magnitude3; break;
			}


		}
	}
}


__kernel void hyst_kernel(__global unsigned char *data, __global unsigned char *out, int cols, int rows) {
    
	for (int row = 1; row < rows - 1; row ++){
		for (int col = 1; col < cols / 2; col ++){

			int col0 = col * 2 - 1;
			int col1 = col * 2;
			int row0 = row * 2 - 1;
			int row1 = row * 2;
			int pos0 = row0 * cols + col0;
			int pos1 = row0 * cols + col1;
			int pos2 = row1 * cols + col0;
			int pos3 = row1 * cols + col1;

			float lowThresh  = 10;
			float highThresh = 70;
			const unsigned char EDGE = 255;

			unsigned char magnitude0 = data[pos0];
			unsigned char magnitude1 = data[pos1];
			unsigned char magnitude2 = data[pos2];
			unsigned char magnitude3 = data[pos3];

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

			if(magnitude2 >= highThresh)
				out[pos2] = EDGE;
			else if(magnitude2 <= lowThresh)
				out[pos2] = 0;
			else {
				float med = (highThresh + lowThresh) / 2;

				if(magnitude2 >= med)
					out[pos2] = EDGE;
				else
					out[pos2] = 0;
			}

			if(magnitude3 >= highThresh)
				out[pos3] = EDGE;
			else if(magnitude3 <= lowThresh)
				out[pos3] = 0;
			else {
				float med = (highThresh + lowThresh) / 2;

				if(magnitude3 >= med)
					out[pos3] = EDGE;
				else
					out[pos3] = 0;
			}
			
		}
	}
}



