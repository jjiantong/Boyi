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

	float model_param_0[4];
	float model_param_1[4];
	float model_param_2[4];
	float model_param_3[4];
	float model_param_4[4];
	float model_param_5[4];
	float model_param_6[4];
	float model_param_7[4];
	float model_param_8[4];
	float model_param_9[4];
 
	float4 model_float4_0 = read_channel_altera(c_model[0]);
	float4 model_float4_1 = read_channel_altera(c_model[1]);
	float4 model_float4_2 = read_channel_altera(c_model[2]);
	float4 model_float4_3 = read_channel_altera(c_model[3]);
	float4 model_float4_4 = read_channel_altera(c_model[4]);
	float4 model_float4_5 = read_channel_altera(c_model[5]);
	float4 model_float4_6 = read_channel_altera(c_model[6]);
	float4 model_float4_7 = read_channel_altera(c_model[7]);
	float4 model_float4_8 = read_channel_altera(c_model[8]);
	float4 model_float4_9 = read_channel_altera(c_model[9]);
	
	model_param_0[0] = model_float4_0.s0;
	model_param_0[1] = model_float4_0.s1;
	model_param_0[2] = model_float4_0.s2;
	model_param_0[3] = model_float4_0.s3;
	model_param_1[0] = model_float4_1.s0;
	model_param_1[1] = model_float4_1.s1;
	model_param_1[2] = model_float4_1.s2;
	model_param_1[3] = model_float4_1.s3;
	model_param_2[0] = model_float4_2.s0;
	model_param_2[1] = model_float4_2.s1;
	model_param_2[2] = model_float4_2.s2;
	model_param_2[3] = model_float4_2.s3;
	model_param_3[0] = model_float4_3.s0;
	model_param_3[1] = model_float4_3.s1;
	model_param_3[2] = model_float4_3.s2;
	model_param_3[3] = model_float4_3.s3;
	model_param_4[0] = model_float4_4.s0;
	model_param_4[1] = model_float4_4.s1;
	model_param_4[2] = model_float4_4.s2;
	model_param_4[3] = model_float4_4.s3;
	model_param_5[0] = model_float4_5.s0;
	model_param_5[1] = model_float4_5.s1;
	model_param_5[2] = model_float4_5.s2;
	model_param_5[3] = model_float4_5.s3;
	model_param_6[0] = model_float4_6.s0;
	model_param_6[1] = model_float4_6.s1;
	model_param_6[2] = model_float4_6.s2;
	model_param_6[3] = model_float4_6.s3;
	model_param_7[0] = model_float4_7.s0;
	model_param_7[1] = model_float4_7.s1;
	model_param_7[2] = model_float4_7.s2;
	model_param_7[3] = model_float4_7.s3;
	model_param_8[0] = model_float4_8.s0;
	model_param_8[1] = model_float4_8.s1;
	model_param_8[2] = model_float4_8.s2;
	model_param_8[3] = model_float4_8.s3;
	model_param_9[0] = model_float4_9.s0;
	model_param_9[1] = model_float4_9.s1;
	model_param_9[2] = model_float4_9.s2;
	model_param_9[3] = model_float4_9.s3;

	int outlier_local_count_0 = 0;
	int outlier_local_count_1 = 0;
	int outlier_local_count_2 = 0;
	int outlier_local_count_3 = 0;
	int outlier_local_count_4 = 0;
	int outlier_local_count_5 = 0;
	int outlier_local_count_6 = 0;
	int outlier_local_count_7 = 0;
	int outlier_local_count_8 = 0;
	int outlier_local_count_9 = 0;


    if(model_param_0[0] == -2011)
		outlier_local_count_0 = MAX;
	
	else{
		outlier_local_count_0 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_0[0]) * model_param_0[2]) -
								 (int)((fvreg.y - model_param_0[1]) * model_param_0[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_0[1]) * model_param_0[2]) +
								 (int)((fvreg.x - model_param_0[0]) * model_param_0[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_0++;
			}
		}
	} 
	
	if(model_param_1[0] == -2011)
		outlier_local_count_1 = MAX;
	else{
		outlier_local_count_1 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_1[0]) * model_param_1[2]) -
								 (int)((fvreg.y - model_param_1[1]) * model_param_1[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_1[1]) * model_param_1[2]) +
								 (int)((fvreg.x - model_param_1[0]) * model_param_1[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_1++;
			}
		}
	}   

	if(model_param_2[0] == -2011)
		outlier_local_count_2 = MAX;
	else{
		outlier_local_count_2 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_2[0]) * model_param_2[2]) -
								 (int)((fvreg.y - model_param_2[1]) * model_param_2[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_2[1]) * model_param_2[2]) +
								 (int)((fvreg.x - model_param_2[0]) * model_param_2[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_2++;
			}
		}
	}  

	if(model_param_3[0] == -2011)
		outlier_local_count_3 = MAX;
	else{
		outlier_local_count_3 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_3[0]) * model_param_3[2]) -
								 (int)((fvreg.y - model_param_3[1]) * model_param_3[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_3[1]) * model_param_3[2]) +
								 (int)((fvreg.x - model_param_3[0]) * model_param_3[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_3++;
			}
		}
	}  

	if(model_param_4[0] == -2011)
		outlier_local_count_4 = MAX;
	else{
		outlier_local_count_4 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_4[0]) * model_param_4[2]) -
								 (int)((fvreg.y - model_param_4[1]) * model_param_4[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_4[1]) * model_param_4[2]) +
								 (int)((fvreg.x - model_param_4[0]) * model_param_4[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_4++;
			}
		}
	}  

	if(model_param_5[0] == -2011)
		outlier_local_count_5 = MAX;
	else{
		outlier_local_count_5 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_5[0]) * model_param_5[2]) -
								 (int)((fvreg.y - model_param_5[1]) * model_param_5[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_5[1]) * model_param_5[2]) +
								 (int)((fvreg.x - model_param_5[0]) * model_param_5[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_5++;
			}
		}
	} 

	if(model_param_6[0] == -2011)
		outlier_local_count_6 = MAX;
	else{
		outlier_local_count_6 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_6[0]) * model_param_6[2]) -
								 (int)((fvreg.y - model_param_6[1]) * model_param_6[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_6[1]) * model_param_6[2]) +
								 (int)((fvreg.x - model_param_6[0]) * model_param_6[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_6++;
			}
		}
	}
	
	if(model_param_7[0] == -2011)
		outlier_local_count_7 = MAX;
	else{
		outlier_local_count_7 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_7[0]) * model_param_7[2]) -
								 (int)((fvreg.y - model_param_7[1]) * model_param_7[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_7[1]) * model_param_7[2]) +
								 (int)((fvreg.x - model_param_7[0]) * model_param_7[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_7++;
			}
		}
	} 
	
	if(model_param_8[0] == -2011)
		outlier_local_count_8 = MAX;
	else{
		outlier_local_count_8 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_8[0]) * model_param_8[2]) -
								 (int)((fvreg.y - model_param_8[1]) * model_param_8[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_8[1]) * model_param_8[2]) +
								 (int)((fvreg.x - model_param_8[0]) * model_param_8[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_8++;
			}
		}
	}  

	if(model_param_9[0] == -2011)
		outlier_local_count_9 = MAX;
	else{
		outlier_local_count_9 = 0;

		#pragma unroll 8
		for(int i = 0; i < flowvector_count; i ++) {
			
			float vx_error, vy_error;

			flowvector fvreg = flowvectors[i]; 
			vx_error = fvreg.x + ((int)((fvreg.x - model_param_9[0]) * model_param_9[2]) -
								 (int)((fvreg.y - model_param_9[1]) * model_param_9[3])) -
					   fvreg.vx;
			vy_error = fvreg.y + ((int)((fvreg.y - model_param_9[1]) * model_param_9[2]) +
								 (int)((fvreg.x - model_param_9[0]) * model_param_9[3])) -
					   fvreg.vy;
			if((fabs(vx_error) >= error_threshold) || (fabs(vy_error) >= error_threshold)) {
				outlier_local_count_9++;
			}
		}
	} 


	if(outlier_local_count_0 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_0;
		model_candidate[index]    = get_global_size(0) + 0 * get_global_id(0);
	}

	if(outlier_local_count_1 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_1;
		model_candidate[index]    = get_global_size(0) + 1 * get_global_id(0);
	}

	if(outlier_local_count_2 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_2;
		model_candidate[index]    = get_global_size(0) + 2 * get_global_id(0);
	}

	if(outlier_local_count_3 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_3;
		model_candidate[index]    = get_global_size(0) + 3 * get_global_id(0);
	}

	if(outlier_local_count_4 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_4;
		model_candidate[index]    = get_global_size(0) + 4 * get_global_id(0);
	}

	if(outlier_local_count_5 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_5;
		model_candidate[index]    = get_global_size(0) + 5 * get_global_id(0);
	}

	if(outlier_local_count_6 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_6;
		model_candidate[index]    = get_global_size(0) + 6 * get_global_id(0);
	}

	if(outlier_local_count_7 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_7;
		model_candidate[index]    = get_global_size(0) + 7 * get_global_id(0);
	}

	if(outlier_local_count_8 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_8;
		model_candidate[index]    = get_global_size(0) + 8 * get_global_id(0);
	}

	if(outlier_local_count_9 < flowvector_count * convergence_threshold) {
		int index                 = atomic_add(g_out_id, 1);
		outliers_candidate[index] = outlier_local_count_9;
		model_candidate[index]    = get_global_size(0) + 9 * get_global_id(0);
	}
}

