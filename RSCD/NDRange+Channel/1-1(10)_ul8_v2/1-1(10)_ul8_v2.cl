#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

#define MAX 6000

int gen_model_param(int x1, int y1, int vx1, int vy1, int x2, int y2, int vx2, int vy2, float *model_param) {
    float temp;
    temp = (float)((vx1 * (vx1 - (2 * vx2))) + (vx2 * vx2) + (vy1 * vy1) - (vy2 * ((2 * vy1) - vy2)));
    if(temp == 0) { // Check to prevent division by zero
        return (0);
    }
    model_param[0] = (((vx1 * ((-vx2 * x1) + (vx1 * x2) - (vx2 * x2) + (vy2 * y1) - (vy2 * y2))) +
                          (vy1 * ((-vy2 * x1) + (vy1 * x2) - (vy2 * x2) - (vx2 * y1) + (vx2 * y2))) +
                          (x1 * ((vy2 * vy2) + (vx2 * vx2)))) /
                      temp);
    model_param[1] = (((vx2 * ((vy1 * x1) - (vy1 * x2) - (vx1 * y1) + (vx2 * y1) - (vx1 * y2))) +
                          (vy2 * ((-vx1 * x1) + (vx1 * x2) - (vy1 * y1) + (vy2 * y1) - (vy1 * y2))) +
                          (y2 * ((vx1 * vx1) + (vy1 * vy1)))) /
                      temp);

    temp = (float)((x1 * (x1 - (2 * x2))) + (x2 * x2) + (y1 * (y1 - (2 * y2))) + (y2 * y2));
    if(temp == 0) { // Check to prevent division by zero
        return (0);
    }
    model_param[2] = ((((x1 - x2) * (vx1 - vx2)) + ((y1 - y2) * (vy1 - vy2))) / temp);
    model_param[3] = ((((x1 - x2) * (vy1 - vy2)) + ((y2 - y1) * (vx1 - vx2))) / temp);
    return (1);
}

	channel float4 c_model[10];
	
__kernel 
void RANSAC_model(__global flowvector *restrict flowvectors,
    __global int *restrict random_numbers) {
    
    const size_t iter = get_global_id(0);

    float vx_error, vy_error;
    int   outlier_local_count = 0;

	float model_param[4] = {0,0,0,0};
 
	flowvector fv[2];
    int rand_num = random_numbers[iter * 2 + 0];
    fv[0]    = flowvectors[rand_num];
    rand_num = random_numbers[iter * 2 + 1];
    fv[1]    = flowvectors[rand_num];

    int ret = 0;
    int vx1 = fv[0].vx - fv[0].x;
    int vy1 = fv[0].vy - fv[0].y;
    int vx2 = fv[1].vx - fv[1].x;
    int vy2 = fv[1].vy - fv[1].y;

    ret = gen_model_param(fv[0].x, fv[0].y, vx1, vy1, fv[1].x, fv[1].y, vx2, vy2, model_param);
    if(ret == 0)
		model_param[0] = -2011;
    
	float4 model_float4;
	model_float4.s0 = model_param[0];
	model_float4.s1 = model_param[1];
	model_float4.s2 = model_param[2];
	model_float4.s3 = model_param[3];
	
	if(iter % 10 == 0)
		write_channel_altera(c_model[0], model_float4);   
	else if(iter % 10 == 1)
		write_channel_altera(c_model[1], model_float4);
	else if(iter % 10 == 2)
		write_channel_altera(c_model[2], model_float4);      
	else if(iter % 10 == 3)
		write_channel_altera(c_model[3], model_float4);
	else if(iter % 10 == 4)
		write_channel_altera(c_model[4], model_float4);      
	else if(iter % 10 == 5)
		write_channel_altera(c_model[5], model_float4);
	else if(iter % 10 == 6)
		write_channel_altera(c_model[6], model_float4);    
	else if(iter % 10 == 7)
		write_channel_altera(c_model[7], model_float4);
	else if(iter % 10 == 8)
		write_channel_altera(c_model[8], model_float4);        
	else
		write_channel_altera(c_model[9], model_float4);
}

__kernel 
void RANSAC_threshold_0(int flowvector_count, int error_threshold, float convergence_threshold,
    __global flowvector *restrict flowvectors,
    __global int *restrict model_candidate, __global int *restrict outliers_candidate, 
    __global int *g_out_id ) {

	float model_param[10][4];
	
	float4 model_float4[10];
	model_float4[0] = read_channel_altera(c_model[0]);
	model_float4[1] = read_channel_altera(c_model[1]);
	model_float4[2] = read_channel_altera(c_model[2]);
	model_float4[3] = read_channel_altera(c_model[3]);
	model_float4[4] = read_channel_altera(c_model[4]);
	model_float4[5] = read_channel_altera(c_model[5]);
	model_float4[6] = read_channel_altera(c_model[6]);
	model_float4[7] = read_channel_altera(c_model[7]);
	model_float4[8] = read_channel_altera(c_model[8]);
	model_float4[9] = read_channel_altera(c_model[9]);
	
	model_param[0][0] = model_float4[0].s0;
	model_param[0][1] = model_float4[0].s1;
	model_param[0][2] = model_float4[0].s2;
	model_param[0][3] = model_float4[0].s3;
	model_param[1][0] = model_float4[1].s0;
	model_param[1][1] = model_float4[1].s1;
	model_param[1][2] = model_float4[1].s2;
	model_param[1][3] = model_float4[1].s3;
	model_param[2][0] = model_float4[2].s0;
	model_param[2][1] = model_float4[2].s1;
	model_param[2][2] = model_float4[2].s2;
	model_param[2][3] = model_float4[2].s3;
	model_param[3][0] = model_float4[3].s0;
	model_param[3][1] = model_float4[3].s1;
	model_param[3][2] = model_float4[3].s2;
	model_param[3][3] = model_float4[3].s3;
	model_param[4][0] = model_float4[4].s0;
	model_param[4][1] = model_float4[4].s1;
	model_param[4][2] = model_float4[4].s2;
	model_param[4][3] = model_float4[4].s3;
	model_param[5][0] = model_float4[5].s0;
	model_param[5][1] = model_float4[5].s1;
	model_param[5][2] = model_float4[5].s2;
	model_param[5][3] = model_float4[5].s3;
	model_param[6][0] = model_float4[6].s0;
	model_param[6][1] = model_float4[6].s1;
	model_param[6][2] = model_float4[6].s2;
	model_param[6][3] = model_float4[6].s3;
	model_param[7][0] = model_float4[7].s0;
	model_param[7][1] = model_float4[7].s1;
	model_param[7][2] = model_float4[7].s2;
	model_param[7][3] = model_float4[7].s3;
	model_param[8][0] = model_float4[8].s0;
	model_param[8][1] = model_float4[8].s1;
	model_param[8][2] = model_float4[8].s2;
	model_param[8][3] = model_float4[8].s3;
	model_param[9][0] = model_float4[9].s0;
	model_param[9][1] = model_float4[9].s1;
	model_param[9][2] = model_float4[9].s2;
	model_param[9][3] = model_float4[9].s3;

	int outlier_local_count[10] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0};


    if(model_param[0][0] == -2011)
		outlier_local_count[0] = MAX;
	
	else{
		outlier_local_count[0] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[0][0]) * model_param[0][2]) -
								 (int)((fvreg.y - model_param[0][1]) * model_param[0][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[0][1]) * model_param[0][2]) +
								 (int)((fvreg.x - model_param[0][0]) * model_param[0][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[0]++;
			}
		}
	} 
	
	if(model_param[1][0] == -2011)
		outlier_local_count[1] = MAX;
	else{
		outlier_local_count[1] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[1][0]) * model_param[1][2]) -
								 (int)((fvreg.y - model_param[1][1]) * model_param[1][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[1][1]) * model_param[1][2]) +
								 (int)((fvreg.x - model_param[1][0]) * model_param[1][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[1]++;
			}
		}
	}   

	if(model_param[2][0] == -2011)
		outlier_local_count[2] = MAX;
	else{
		outlier_local_count[2] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[2][0]) * model_param[2][2]) -
								 (int)((fvreg.y - model_param[2][1]) * model_param[2][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[2][1]) * model_param[2][2]) +
								 (int)((fvreg.x - model_param[2][0]) * model_param[2][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[2]++;
			}
		}
	}  

	if(model_param[3][0] == -2011)
		outlier_local_count[3] = MAX;
	else{
		outlier_local_count[3] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[3][0]) * model_param[3][2]) -
								 (int)((fvreg.y - model_param[3][1]) * model_param[3][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[3][1]) * model_param[3][2]) +
								 (int)((fvreg.x - model_param[3][0]) * model_param[3][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[3]++;
			}
		}
	}  

	if(model_param[4][0] == -2011)
		outlier_local_count[4] = MAX;
	else{
		outlier_local_count[4] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[4][0]) * model_param[4][2]) -
								 (int)((fvreg.y - model_param[4][1]) * model_param[4][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[4][1]) * model_param[4][2]) +
								 (int)((fvreg.x - model_param[4][0]) * model_param[4][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[4]++;
			}
		}
	}  

	if(model_param[5][0] == -2011)
		outlier_local_count[5] = MAX;
	else{
		outlier_local_count[5] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[5][0]) * model_param[5][2]) -
								 (int)((fvreg.y - model_param[5][1]) * model_param[5][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[5][1]) * model_param[5][2]) +
								 (int)((fvreg.x - model_param[5][0]) * model_param[5][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[5]++;
			}
		}
	} 

	if(model_param[6][0] == -2011)
		outlier_local_count[6] = MAX;
	else{
		outlier_local_count[6] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[6][0]) * model_param[6][2]) -
								 (int)((fvreg.y - model_param[6][1]) * model_param[6][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[6][1]) * model_param[6][2]) +
								 (int)((fvreg.x - model_param[6][0]) * model_param[6][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[6]++;
			}
		}
	}
	
	if(model_param[7][0] == -2011)
		outlier_local_count[7] = MAX;
	else{
		outlier_local_count[7] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[7][0]) * model_param[7][2]) -
								 (int)((fvreg.y - model_param[7][1]) * model_param[7][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[7][1]) * model_param[7][2]) +
								 (int)((fvreg.x - model_param[7][0]) * model_param[7][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[7]++;
			}
		}
	} 
	
	if(model_param[8][0] == -2011)
		outlier_local_count[8] = MAX;
	else{
		outlier_local_count[8] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[8][0]) * model_param[8][2]) -
								 (int)((fvreg.y - model_param[8][1]) * model_param[8][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[8][1]) * model_param[8][2]) +
								 (int)((fvreg.x - model_param[8][0]) * model_param[8][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[8]++;
			}
		}
	}  

	if(model_param[9][0] == -2011)
		outlier_local_count[9] = MAX;
	else{
		outlier_local_count[9] = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param[9][0]) * model_param[9][2]) -
								 (int)((fvreg.y - model_param[9][1]) * model_param[9][3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param[9][1]) * model_param[9][2]) +
								 (int)((fvreg.x - model_param[9][0]) * model_param[9][3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count[9]++;
			}
		}
	} 


	if(outlier_local_count[0] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[0];
		model_candidate[index]    = get_global_size(0) + 0 * get_global_id(0);
	}

	if(outlier_local_count[1] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[1];
		model_candidate[index]    = get_global_size(0) + 1 * get_global_id(0);
	}

	if(outlier_local_count[2] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[2];
		model_candidate[index]    = get_global_size(0) + 2 * get_global_id(0);
	}

	if(outlier_local_count[3] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[3];
		model_candidate[index]    = get_global_size(0) + 3 * get_global_id(0);
	}

	if(outlier_local_count[4] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[4];
		model_candidate[index]    = get_global_size(0) + 4 * get_global_id(0);
	}

	if(outlier_local_count[5] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[5];
		model_candidate[index]    = get_global_size(0) + 5 * get_global_id(0);
	}

	if(outlier_local_count[6] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[6];
		model_candidate[index]    = get_global_size(0) + 6 * get_global_id(0);
	}

	if(outlier_local_count[7] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[7];
		model_candidate[index]    = get_global_size(0) + 7 * get_global_id(0);
	}

	if(outlier_local_count[8] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[8];
		model_candidate[index]    = get_global_size(0) + 8 * get_global_id(0);
	}

	if(outlier_local_count[9] < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count[9];
		model_candidate[index]    = get_global_size(0) + 9 * get_global_id(0);
	}
}

