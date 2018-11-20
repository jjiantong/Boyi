#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#define MAX 6000

#include "support/common.h"
#include "support/partitioner.h"

// OpenCL baseline kernel ------------------------------------------------------------------------------------------
// Generate model on GPU side
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


	channel float4 c_model[1];
	channel int c_count[4];

__kernel void RANSAC_model( int n_tasks, __global flowvector *restrict flowvectors,
    __global int *restrict random_numbers) {

	float model_param[4];

    for(int iter = 0; iter < n_tasks; iter++) {

        model_param[0] = 0;
		model_param[1] = 0;
		model_param[2] = 0;
		model_param[3] = 0;

        int        rand_num = random_numbers[iter * 2 + 0];
        flowvector fv[2];
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

		write_channel_altera(c_model[0], model_float4);
	}
}


__kernel void RANSAC_threshold_0(int flowvector_count, int error_threshold,
    int n_tasks, __global flowvector *restrict flowvectors) {
   
    for(int iter = 0; iter < n_tasks; iter++) {

		int   outlier_local_count_0;
		int   outlier_local_count_1;
		int   outlier_local_count_2;
		int   outlier_local_count_3;

		float model_param[4];
		float4 model_float4 = read_channel_altera(c_model[0]);
		model_param[0] = model_float4.s0;
		model_param[1] = model_float4.s1;
		model_param[2] = model_float4.s2;
		model_param[3] = model_float4.s3;

        if(model_param[0] == -2011){
			outlier_local_count_0 = MAX;
			outlier_local_count_1 = MAX;
			outlier_local_count_2 = MAX;
			outlier_local_count_3 = MAX;
		}

		else{
			outlier_local_count_0 = 0;
			outlier_local_count_1 = 0;
			outlier_local_count_2 = 0;
			outlier_local_count_3 = 0;

			int size = flowvector_count / 4;
			#pragma unroll 10
			for(int i = 0; i < size; i++) {
				flowvector fvreg0 = flowvectors[i * 4 + 0]; 
				flowvector fvreg1 = flowvectors[i * 4 + 1]; 
				flowvector fvreg2 = flowvectors[i * 4 + 2]; 
				flowvector fvreg3 = flowvectors[i * 4 + 3]; 

				float vx_error_0, vy_error_0;
				float vx_error_1, vy_error_1;
				float vx_error_2, vy_error_2;
				float vx_error_3, vy_error_3;

				vx_error_0 = fvreg0.x + ((int)((fvreg0.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg0.y - model_param[1]) * model_param[3])) -
						fvreg0.vx;
				vy_error_0 = fvreg0.y + ((int)((fvreg0.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg0.x - model_param[0]) * model_param[3])) -
						fvreg0.vy;
				vx_error_1 = fvreg1.x + ((int)((fvreg1.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg1.y - model_param[1]) * model_param[3])) -
						fvreg1.vx;
				vy_error_1 = fvreg1.y + ((int)((fvreg1.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg1.x - model_param[0]) * model_param[3])) -
						fvreg1.vy;
				vx_error_2 = fvreg2.x + ((int)((fvreg2.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg2.y - model_param[1]) * model_param[3])) -
						fvreg2.vx;
				vy_error_2 = fvreg2.y + ((int)((fvreg2.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg2.x - model_param[0]) * model_param[3])) -
						fvreg2.vy;
				vx_error_3 = fvreg3.x + ((int)((fvreg3.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg3.y - model_param[1]) * model_param[3])) -
						fvreg3.vx;
				vy_error_3 = fvreg3.y + ((int)((fvreg3.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg3.x - model_param[0]) * model_param[3])) -
						fvreg3.vy;


				if((fabs(vx_error_0) >= error_threshold) || (fabs(vy_error_0) >= error_threshold)) {
					outlier_local_count_0++;
				}
				if((fabs(vx_error_1) >= error_threshold) || (fabs(vy_error_1) >= error_threshold)) {
					outlier_local_count_1++;
				}
				if((fabs(vx_error_2) >= error_threshold) || (fabs(vy_error_2) >= error_threshold)) {
					outlier_local_count_2++;
				}
				if((fabs(vx_error_3) >= error_threshold) || (fabs(vy_error_3) >= error_threshold)) {
					outlier_local_count_3++;
				}
			}
		}

		write_channel_altera(c_count[0], outlier_local_count_0);
		write_channel_altera(c_count[1], outlier_local_count_1);
		write_channel_altera(c_count[2], outlier_local_count_2);
		write_channel_altera(c_count[3], outlier_local_count_3);
    }
}

__kernel void RANSAC_out(int flowvector_count, float convergence_threshold,
    int n_tasks,
    __global int *restrict model_candidate, __global int *restrict outliers_candidate, 
    __global int *g_out_id ) {

	int index = 0;
    for(int iter = 0; iter < n_tasks; iter++) {

		int outlier_count_0 = read_channel_altera(c_count[0]);
		int outlier_count_1 = read_channel_altera(c_count[1]);
		int outlier_count_2 = read_channel_altera(c_count[2]);
		int outlier_count_3 = read_channel_altera(c_count[3]);
		int outlier_count   = outlier_count_0 + outlier_count_1 + outlier_count_2 + outlier_count_3;

		if(outlier_count < flowvector_count * convergence_threshold) {
			outliers_candidate[index] = outlier_count;
			model_candidate[index] = iter;
			index ++;
        }      
    }
	g_out_id[0] = index;
}
