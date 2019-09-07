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

    
    typedef struct {
        int c[18];
    } Channel_type;

	channel float4 c_model[1];
	channel Channel_type c_count;

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

		Channel_type outlier_local_count;

		float model_param[4];
		float4 model_float4 = read_channel_altera(c_model[0]);
		model_param[0] = model_float4.s0;
		model_param[1] = model_float4.s1;
		model_param[2] = model_float4.s2;
		model_param[3] = model_float4.s3;

        if(model_param[0] == -2011){
			outlier_local_count.c[0] = MAX;
			outlier_local_count.c[1] = MAX;
			outlier_local_count.c[2] = MAX;
			outlier_local_count.c[3] = MAX;
			outlier_local_count.c[4] = MAX;
			outlier_local_count.c[5] = MAX;
			outlier_local_count.c[6] = MAX;
			outlier_local_count.c[7] = MAX;
			outlier_local_count.c[8] = MAX;
			outlier_local_count.c[9] = MAX;
			outlier_local_count.c[10] = MAX;
			outlier_local_count.c[11] = MAX;
			outlier_local_count.c[12] = MAX;
			outlier_local_count.c[13] = MAX;
            outlier_local_count.c[14] = MAX;
			outlier_local_count.c[15] = MAX;
			outlier_local_count.c[16] = MAX;
			outlier_local_count.c[17] = MAX;
		}

		else{
			outlier_local_count.c[0] = 0;
			outlier_local_count.c[1] = 0;
			outlier_local_count.c[2] = 0;
			outlier_local_count.c[3] = 0;
			outlier_local_count.c[4] = 0;
			outlier_local_count.c[5] = 0;
			outlier_local_count.c[6] = 0;
			outlier_local_count.c[7] = 0;
			outlier_local_count.c[8] = 0;
			outlier_local_count.c[9] = 0;
			outlier_local_count.c[10] = 0;
			outlier_local_count.c[11] = 0;
			outlier_local_count.c[12] = 0;
			outlier_local_count.c[13] = 0;
            outlier_local_count.c[14] = 0;
			outlier_local_count.c[15] = 0;
			outlier_local_count.c[16] = 0;
			outlier_local_count.c[17] = 0;

			int size = flowvector_count / 18;
			#pragma unroll 4
			for(int i = 0; i < size; i++) {
				flowvector fvreg0 = flowvectors[i * 18 + 0]; 
				flowvector fvreg1 = flowvectors[i * 18 + 1]; 
				flowvector fvreg2 = flowvectors[i * 18 + 2]; 
				flowvector fvreg3 = flowvectors[i * 18 + 3]; 
				flowvector fvreg4 = flowvectors[i * 18 + 4]; 
				flowvector fvreg5 = flowvectors[i * 18 + 5]; 
				flowvector fvreg6 = flowvectors[i * 18 + 6]; 
				flowvector fvreg7 = flowvectors[i * 18 + 7]; 
				flowvector fvreg8 = flowvectors[i * 18 + 8]; 
				flowvector fvreg9 = flowvectors[i * 18 + 9]; 
				flowvector fvreg10 = flowvectors[i * 18 + 10]; 
				flowvector fvreg11 = flowvectors[i * 18 + 11]; 
				flowvector fvreg12 = flowvectors[i * 18 + 12]; 
				flowvector fvreg13 = flowvectors[i * 18 + 13];
                flowvector fvreg14 = flowvectors[i * 18 + 14]; 
				flowvector fvreg15 = flowvectors[i * 18 + 15]; 
				flowvector fvreg16 = flowvectors[i * 18 + 16]; 
				flowvector fvreg17 = flowvectors[i * 18 + 17];

				float vx_error_0, vy_error_0;
				float vx_error_1, vy_error_1;
				float vx_error_2, vy_error_2;
				float vx_error_3, vy_error_3;
				float vx_error_4, vy_error_4;
				float vx_error_5, vy_error_5;
				float vx_error_6, vy_error_6;
				float vx_error_7, vy_error_7;
				float vx_error_8, vy_error_8;
				float vx_error_9, vy_error_9;
				float vx_error_10, vy_error_10;
				float vx_error_11, vy_error_11;
				float vx_error_12, vy_error_12;
				float vx_error_13, vy_error_13;
                float vx_error_14, vy_error_14;
				float vx_error_15, vy_error_15;
				float vx_error_16, vy_error_16;
				float vx_error_17, vy_error_17;

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
				vx_error_4 = fvreg4.x + ((int)((fvreg4.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg4.y - model_param[1]) * model_param[3])) -
						fvreg4.vx;
				vy_error_4 = fvreg4.y + ((int)((fvreg4.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg4.x - model_param[0]) * model_param[3])) -
						fvreg4.vy;
				vx_error_5 = fvreg5.x + ((int)((fvreg5.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg5.y - model_param[1]) * model_param[3])) -
						fvreg5.vx;
				vy_error_5 = fvreg5.y + ((int)((fvreg5.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg5.x - model_param[0]) * model_param[3])) -
						fvreg5.vy;
				vx_error_6 = fvreg6.x + ((int)((fvreg6.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg6.y - model_param[1]) * model_param[3])) -
						fvreg6.vx;
				vy_error_6 = fvreg6.y + ((int)((fvreg6.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg6.x - model_param[0]) * model_param[3])) -
						fvreg6.vy;
				vx_error_7 = fvreg7.x + ((int)((fvreg7.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg7.y - model_param[1]) * model_param[3])) -
						fvreg7.vx;
				vy_error_7 = fvreg7.y + ((int)((fvreg7.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg7.x - model_param[0]) * model_param[3])) -
						fvreg7.vy;
				vx_error_8 = fvreg8.x + ((int)((fvreg8.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg8.y - model_param[1]) * model_param[3])) -
						fvreg8.vx;
				vy_error_8 = fvreg8.y + ((int)((fvreg8.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg8.x - model_param[0]) * model_param[3])) -
						fvreg8.vy;
				vx_error_9 = fvreg9.x + ((int)((fvreg9.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg9.y - model_param[1]) * model_param[3])) -
						fvreg9.vx;
				vy_error_9 = fvreg9.y + ((int)((fvreg9.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg9.x - model_param[0]) * model_param[3])) -
						fvreg9.vy;
				vx_error_10 = fvreg10.x + ((int)((fvreg10.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg10.y - model_param[1]) * model_param[3])) -
						fvreg10.vx;
				vy_error_10 = fvreg10.y + ((int)((fvreg10.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg10.x - model_param[0]) * model_param[3])) -
						fvreg10.vy;
				vx_error_11 = fvreg11.x + ((int)((fvreg11.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg11.y - model_param[1]) * model_param[3])) -
						fvreg11.vx;
				vy_error_11 = fvreg11.y + ((int)((fvreg11.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg11.x - model_param[0]) * model_param[3])) -
						fvreg11.vy;
				vx_error_12 = fvreg12.x + ((int)((fvreg12.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg12.y - model_param[1]) * model_param[3])) -
						fvreg12.vx;
				vy_error_12 = fvreg12.y + ((int)((fvreg12.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg12.x - model_param[0]) * model_param[3])) -
						fvreg12.vy;
				vx_error_13 = fvreg13.x + ((int)((fvreg13.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg13.y - model_param[1]) * model_param[3])) -
						fvreg13.vx;
				vy_error_13 = fvreg13.y + ((int)((fvreg13.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg13.x - model_param[0]) * model_param[3])) -
						fvreg13.vy;
                vx_error_14 = fvreg14.x + ((int)((fvreg14.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg14.y - model_param[1]) * model_param[3])) -
						fvreg14.vx;
				vy_error_14 = fvreg14.y + ((int)((fvreg14.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg14.x - model_param[0]) * model_param[3])) -
						fvreg14.vy;
				vx_error_15 = fvreg15.x + ((int)((fvreg15.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg15.y - model_param[1]) * model_param[3])) -
						fvreg15.vx;
				vy_error_15 = fvreg15.y + ((int)((fvreg15.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg15.x - model_param[0]) * model_param[3])) -
						fvreg15.vy;
				vx_error_16 = fvreg16.x + ((int)((fvreg16.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg16.y - model_param[1]) * model_param[3])) -
						fvreg16.vx;
				vy_error_16 = fvreg16.y + ((int)((fvreg16.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg16.x - model_param[0]) * model_param[3])) -
						fvreg16.vy;
				vx_error_17 = fvreg17.x + ((int)((fvreg17.x - model_param[0]) * model_param[2]) -
					                     (int)((fvreg17.y - model_param[1]) * model_param[3])) -
						fvreg17.vx;
				vy_error_17 = fvreg17.y + ((int)((fvreg17.y - model_param[1]) * model_param[2]) +
					                     (int)((fvreg17.x - model_param[0]) * model_param[3])) -
						fvreg17.vy;

				if((fabs(vx_error_0) >= error_threshold) || (fabs(vy_error_0) >= error_threshold)) {
					outlier_local_count.c[0]++;
				}
				if((fabs(vx_error_1) >= error_threshold) || (fabs(vy_error_1) >= error_threshold)) {
					outlier_local_count.c[1]++;
				}
				if((fabs(vx_error_2) >= error_threshold) || (fabs(vy_error_2) >= error_threshold)) {
					outlier_local_count.c[2]++;
				}
				if((fabs(vx_error_3) >= error_threshold) || (fabs(vy_error_3) >= error_threshold)) {
					outlier_local_count.c[3]++;
				}
				if((fabs(vx_error_4) >= error_threshold) || (fabs(vy_error_4) >= error_threshold)) {
					outlier_local_count.c[4]++;
				}
				if((fabs(vx_error_5) >= error_threshold) || (fabs(vy_error_5) >= error_threshold)) {
					outlier_local_count.c[5]++;
				}
				if((fabs(vx_error_6) >= error_threshold) || (fabs(vy_error_6) >= error_threshold)) {
					outlier_local_count.c[6]++;
				}
				if((fabs(vx_error_7) >= error_threshold) || (fabs(vy_error_7) >= error_threshold)) {
					outlier_local_count.c[7]++;
				}
				if((fabs(vx_error_8) >= error_threshold) || (fabs(vy_error_8) >= error_threshold)) {
					outlier_local_count.c[8]++;
				}
				if((fabs(vx_error_9) >= error_threshold) || (fabs(vy_error_9) >= error_threshold)) {
					outlier_local_count.c[9]++;
				}
				if((fabs(vx_error_10) >= error_threshold) || (fabs(vy_error_10) >= error_threshold)) {
					outlier_local_count.c[10]++;
				}
				if((fabs(vx_error_11) >= error_threshold) || (fabs(vy_error_11) >= error_threshold)) {
					outlier_local_count.c[11]++;
				}
				if((fabs(vx_error_12) >= error_threshold) || (fabs(vy_error_12) >= error_threshold)) {
					outlier_local_count.c[12]++;
				}
				if((fabs(vx_error_13) >= error_threshold) || (fabs(vy_error_13) >= error_threshold)) {
					outlier_local_count.c[13]++;
				}
                if((fabs(vx_error_14) >= error_threshold) || (fabs(vy_error_14) >= error_threshold)) {
					outlier_local_count.c[14]++;
				}
				if((fabs(vx_error_15) >= error_threshold) || (fabs(vy_error_15) >= error_threshold)) {
					outlier_local_count.c[15]++;
				}
				if((fabs(vx_error_16) >= error_threshold) || (fabs(vy_error_16) >= error_threshold)) {
					outlier_local_count.c[16]++;
				}
				if((fabs(vx_error_17) >= error_threshold) || (fabs(vy_error_17) >= error_threshold)) {
					outlier_local_count.c[17]++;
				}
			}
		}

		write_channel_altera(c_count, outlier_local_count);
    }
}

__kernel void RANSAC_out(int flowvector_count, float convergence_threshold,
    int n_tasks,
    __global int *restrict model_candidate, __global int *restrict outliers_candidate, 
    __global int *g_out_id ) {

	int index = 0;
    for(int iter = 0; iter < n_tasks; iter++) {

        Channel_type outlier_count = read_channel_altera(c_count);
		int s_outlier_count = outlier_count.c[0] + outlier_count.c[1] + outlier_count.c[2] 
							+ outlier_count.c[3] + outlier_count.c[4] + outlier_count.c[5] 
							+ outlier_count.c[6] + outlier_count.c[7] + outlier_count.c[8] 
							+ outlier_count.c[9] + outlier_count.c[10] + outlier_count.c[11] 
							+ outlier_count.c[12] + outlier_count.c[13] + outlier_count.c[14]
                            + outlier_count.c[15] + outlier_count.c[16] + outlier_count.c[17];

		if(s_outlier_count < flowvector_count * convergence_threshold) {
			outliers_candidate[index] = s_outlier_count;
			model_candidate[index] = iter;
			index ++;
        }      
    }
	g_out_id[0] = index;
}
