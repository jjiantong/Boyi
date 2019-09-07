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
__kernel 
__attribute((num_compute_units(2)))
__attribute((num_simd_work_items(4)))
__attribute((reqd_work_group_size(16,16,1)))
void gaussian_kernel(__global unsigned char *data, __global unsigned char *out, int cols,
    __local int *l_data) {
    const int L_SIZE = get_local_size(0);
    int sum         = 0;
    const int g_row = get_global_id(1);
    const int g_col = get_global_id(0);
    const int l_row = get_local_id(1) + 1;
    const int l_col = get_local_id(0) + 1;

    const int pos = g_row * cols + g_col;

    // copy to local
    l_data[l_row * (L_SIZE + 2) + l_col] = data[pos];

	if(l_row == 1 || l_row == L_SIZE) {

		int index1, index2, index3, index4;
		if(l_row == 1){
			index1 = 0 * (L_SIZE + 2) + l_col;
			index2 = pos - cols;
		}
		else{
			index1 = (L_SIZE + 1) * (L_SIZE + 2) + l_col;
			index2 = pos + cols;
		}
        l_data[index1] = data[index2];

        if(l_col == 1 || l_col == L_SIZE){
			if(l_col == 1){
				index3 = index1 - l_col;
				index4 = index2 -1;
			}
			else{
				index3 = index1 - l_col + L_SIZE + 1;
				index4 = index2 + 1;
			}
			l_data[index3] = data[index4];
		}
    }

    if(l_col == 1 || l_col == L_SIZE){

		int index5, index6;
		if(l_col == 1){
			index5 = l_row * (L_SIZE + 2) + 0;
			index6 = pos - 1;
		}
		else{
			index5 = l_row * (L_SIZE + 2) + L_SIZE + 1;
			index6 = pos + 1;
		}
		l_data[index5] = data[index6];
	}

    barrier(CLK_LOCAL_MEM_FENCE);

    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            sum += gaus[i][j] * l_data[(i + l_row - 1) * (L_SIZE + 2) + j + l_col - 1];
        }
    }

    out[pos] = min(255, max(0, sum));
}








// Sobel kernel. Apply sobx and soby separately, then find the sqrt of their
//               squares.
// data:  image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out:   image output data (8B1C)
// theta: angle output data
__kernel 
__attribute((num_compute_units(3)))
__attribute((num_simd_work_items(4)))
__attribute((reqd_work_group_size(16,16,1)))
void sobel_kernel(__global unsigned char *data, __global unsigned char *out, __global unsigned char *theta,
    int cols, __local int *l_data) {
    // collect sums separately. we're storing them into floats because that
    // is what hypot and atan2 will expect.
    const int L_SIZE = get_local_size(0);
    const float PI    = 3.14159265f;
    const int   g_row = get_global_id(1);
    const int   g_col = get_global_id(0);
    const int   l_row = get_local_id(1) + 1;
    const int   l_col = get_local_id(0) + 1;

    const int pos = g_row * cols + g_col;

    // copy to local
    l_data[l_row * (L_SIZE + 2) + l_col] = data[pos];

	if(l_row == 1 || l_row == L_SIZE) {

		int index1, index2, index3, index4;
		if(l_row == 1){
			index1 = 0 * (L_SIZE + 2) + l_col;
			index2 = pos - cols;
		}
		else{
			index1 = (L_SIZE + 1) * (L_SIZE + 2) + l_col;
			index2 = pos + cols;
		}
        l_data[index1] = data[index2];

        if(l_col == 1 || l_col == L_SIZE){
			if(l_col == 1){
				index3 = index1 - l_col;
				index4 = index2 -1;
			}
			else{
				index3 = index1 - l_col + L_SIZE + 1;
				index4 = index2 + 1;
			}
			l_data[index3] = data[index4];
		}
    }

    if(l_col == 1 || l_col == L_SIZE){

		int index5, index6;
		if(l_col == 1){
			index5 = l_row * (L_SIZE + 2) + 0;
			index6 = pos - 1;
		}
		else{
			index5 = l_row * (L_SIZE + 2) + L_SIZE + 1;
			index6 = pos + 1;
		}
		l_data[index5] = data[index6];
	}

    barrier(CLK_LOCAL_MEM_FENCE);

    float sumx = 0, sumy = 0, angle = 0;
    // find x and y derivatives
    for(int i = 0; i < 3; i++) {
        for(int j = 0; j < 3; j++) {
            sumx += sobx[i][j] * l_data[(i + l_row - 1) * (L_SIZE + 2) + j + l_col - 1];
            sumy += soby[i][j] * l_data[(i + l_row - 1) * (L_SIZE + 2) + j + l_col - 1];
        }
    }

    // The output is now the square root of their squares, but they are
    // constrained to 0 <= value <= 255. Note that hypot is a built in function
    // defined as: hypot(x,y) = sqrt(x*x, y*y).
    out[pos] = min(255, max(0, (int)hypot(sumx, sumy)));

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








// Non-maximum Supression Kernel
// data: image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out: image output data (8B1C)
// theta: angle input data
__kernel 
__attribute((num_compute_units(2)))
__attribute((num_simd_work_items(4)))
__attribute((reqd_work_group_size(16,16,1)))
void non_max_supp_kernel(__global unsigned char *data, __global unsigned char *out,
    __global unsigned char *theta, int cols, __local int *l_data) {
    // These variables are offset by one to avoid seg. fault errors
    // As such, this kernel ignores the outside ring of pixels
    const int L_SIZE = get_local_size(0);
    const int g_row = get_global_id(1);
    const int g_col = get_global_id(0);
    const int l_row = get_local_id(1) + 1;
    const int l_col = get_local_id(0) + 1;

    const int pos = g_row * cols + g_col;

    // copy to l_data
    l_data[l_row * (L_SIZE + 2) + l_col] = data[pos];

	if(l_row == 1 || l_row == L_SIZE) {

		int index1, index2, index3, index4;
		if(l_row == 1){
			index1 = 0 * (L_SIZE + 2) + l_col;
			index2 = pos - cols;
		}
		else{
			index1 = (L_SIZE + 1) * (L_SIZE + 2) + l_col;
			index2 = pos + cols;
		}
        l_data[index1] = data[index2];

        if(l_col == 1 || l_col == L_SIZE){
			if(l_col == 1){
				index3 = index1 - l_col;
				index4 = index2 -1;
			}
			else{
				index3 = index1 - l_col + L_SIZE + 1;
				index4 = index2 + 1;
			}
			l_data[index3] = data[index4];
		}
    }

    if(l_col == 1 || l_col == L_SIZE){

		int index5, index6;
		if(l_col == 1){
			index5 = l_row * (L_SIZE + 2) + 0;
			index6 = pos - 1;
		}
		else{
			index5 = l_row * (L_SIZE + 2) + L_SIZE + 1;
			index6 = pos + 1;
		}
		l_data[index5] = data[index6];
	}

    barrier(CLK_LOCAL_MEM_FENCE);

    unsigned char my_magnitude = l_data[l_row * (L_SIZE + 2) + l_col];

	int index1, index2;
    switch(theta[pos]) {
    case 0:
		index1 = l_row * (L_SIZE + 2) + l_col + 1;
		index2 = l_row * (L_SIZE + 2) + l_col - 1;
        break;

    case 45:
		index1 = (l_row - 1) * (L_SIZE + 2) + l_col + 1;
		index2 = (l_row + 1) * (L_SIZE + 2) + l_col - 1;
        break;

    case 90:
		index1 = (l_row - 1) * (L_SIZE + 2) + l_col;
		index2 = (l_row + 1) * (L_SIZE + 2) + l_col;       
		break;

    case 135:
		index1 = (l_row - 1) * (L_SIZE + 2) + l_col - 1;
		index2 = (l_row + 1) * (L_SIZE + 2) + l_col + 1;
        break;

    }

    if(my_magnitude <= l_data[index1] || 
        my_magnitude <= l_data[index2]) 
    {
        out[pos] = 0;
    }
    else {
        out[pos] = my_magnitude;
    }
}








// Hysteresis Threshold Kernel
// data: image input data with each pixel taking up 1 byte (8Bit 1Channel)
// out: image output data (8B1C)
__kernel 
__attribute((num_compute_units(2)))
__attribute((num_simd_work_items(8)))
__attribute((reqd_work_group_size(16,16,1)))
void hyst_kernel(__global unsigned char *data, __global unsigned char *out, int cols) {
    // Establish our high and low thresholds as floats
    float lowThresh  = 10;
    float highThresh = 70;

    // These variables are offset by one to avoid seg. fault errors
    // As such, this kernel ignores the outside ring of pixels
    const int row = get_global_id(1);
    const int col = get_global_id(0);
    const int pos = row * cols + col;

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
