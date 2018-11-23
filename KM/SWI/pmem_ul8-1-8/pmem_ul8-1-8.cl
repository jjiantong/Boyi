#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

__kernel 
void kmeans_kernel_c(__global float  *restrict feature,   
			  __global float  *restrict clusters,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index0 = 0;
	int index1 = 0;
	int index2 = 0;
	int index3 = 0;
	int index4 = 0;
	int index5 = 0;
	int index6 = 0;
	int index7 = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	// the outmost loop: UNROLL_FACTOR = 8 (manually)
	for (int point_id = 0; point_id < npoints / 8; point_id ++) {
	
		int point_id0 = point_id * 8;
		int point_id1 = point_id * 8 + 1;
		int point_id2 = point_id * 8 + 2;
		int point_id3 = point_id * 8 + 3;
		int point_id4 = point_id * 8 + 4;
		int point_id5 = point_id * 8 + 5;
		int point_id6 = point_id * 8 + 6;
		int point_id7 = point_id * 8 + 7;
		
		float p_feature0[NUM_FEATURE];
		float p_feature1[NUM_FEATURE];
		float p_feature2[NUM_FEATURE];
		float p_feature3[NUM_FEATURE];
		float p_feature4[NUM_FEATURE];
		float p_feature5[NUM_FEATURE];
		float p_feature6[NUM_FEATURE];
		float p_feature7[NUM_FEATURE];

		p_feature0[0] = feature[0 * npoints + point_id0];
		p_feature0[1] = feature[1 * npoints + point_id0];
		p_feature0[2] = feature[2 * npoints + point_id0];
		p_feature0[3] = feature[3 * npoints + point_id0];
		p_feature0[4] = feature[4 * npoints + point_id0];
		p_feature0[5] = feature[5 * npoints + point_id0];
		p_feature0[6] = feature[6 * npoints + point_id0];
		p_feature0[7] = feature[7 * npoints + point_id0];

		p_feature1[0] = feature[0 * npoints + point_id1];
		p_feature1[1] = feature[1 * npoints + point_id1];
		p_feature1[2] = feature[2 * npoints + point_id1];
		p_feature1[3] = feature[3 * npoints + point_id1];
		p_feature1[4] = feature[4 * npoints + point_id1];
		p_feature1[5] = feature[5 * npoints + point_id1];
		p_feature1[6] = feature[6 * npoints + point_id1];
		p_feature1[7] = feature[7 * npoints + point_id1];

		p_feature2[0] = feature[0 * npoints + point_id2];
		p_feature2[1] = feature[1 * npoints + point_id2];
		p_feature2[2] = feature[2 * npoints + point_id2];
		p_feature2[3] = feature[3 * npoints + point_id2];
		p_feature2[4] = feature[4 * npoints + point_id2];
		p_feature2[5] = feature[5 * npoints + point_id2];
		p_feature2[6] = feature[6 * npoints + point_id2];
		p_feature2[7] = feature[7 * npoints + point_id2];

		p_feature3[0] = feature[0 * npoints + point_id3];
		p_feature3[1] = feature[1 * npoints + point_id3];
		p_feature3[2] = feature[2 * npoints + point_id3];
		p_feature3[3] = feature[3 * npoints + point_id3];
		p_feature3[4] = feature[4 * npoints + point_id3];
		p_feature3[5] = feature[5 * npoints + point_id3];
		p_feature3[6] = feature[6 * npoints + point_id3];
		p_feature3[7] = feature[7 * npoints + point_id3];

		p_feature4[0] = feature[0 * npoints + point_id4];
		p_feature4[1] = feature[1 * npoints + point_id4];
		p_feature4[2] = feature[2 * npoints + point_id4];
		p_feature4[3] = feature[3 * npoints + point_id4];
		p_feature4[4] = feature[4 * npoints + point_id4];
		p_feature4[5] = feature[5 * npoints + point_id4];
		p_feature4[6] = feature[6 * npoints + point_id4];
		p_feature4[7] = feature[7 * npoints + point_id4];

		p_feature5[0] = feature[0 * npoints + point_id5];
		p_feature5[1] = feature[1 * npoints + point_id5];
		p_feature5[2] = feature[2 * npoints + point_id5];
		p_feature5[3] = feature[3 * npoints + point_id5];
		p_feature5[4] = feature[4 * npoints + point_id5];
		p_feature5[5] = feature[5 * npoints + point_id5];
		p_feature5[6] = feature[6 * npoints + point_id5];
		p_feature5[7] = feature[7 * npoints + point_id5];

		p_feature6[0] = feature[0 * npoints + point_id6];
		p_feature6[1] = feature[1 * npoints + point_id6];
		p_feature6[2] = feature[2 * npoints + point_id6];
		p_feature6[3] = feature[3 * npoints + point_id6];
		p_feature6[4] = feature[4 * npoints + point_id6];
		p_feature6[5] = feature[5 * npoints + point_id6];
		p_feature6[6] = feature[6 * npoints + point_id6];
		p_feature6[7] = feature[7 * npoints + point_id6];

		p_feature7[0] = feature[0 * npoints + point_id7];
		p_feature7[1] = feature[1 * npoints + point_id7];
		p_feature7[2] = feature[2 * npoints + point_id7];
		p_feature7[3] = feature[3 * npoints + point_id7];
		p_feature7[4] = feature[4 * npoints + point_id7];
		p_feature7[5] = feature[5 * npoints + point_id7];
		p_feature7[6] = feature[6 * npoints + point_id7];
		p_feature7[7] = feature[7 * npoints + point_id7];

		float min_dist0 = FLT_MAX;
		float min_dist1 = FLT_MAX;
		float min_dist2 = FLT_MAX;
		float min_dist3 = FLT_MAX;
		float min_dist4 = FLT_MAX;
		float min_dist5 = FLT_MAX;
		float min_dist6 = FLT_MAX;
		float min_dist7 = FLT_MAX;
			
		for (int i=0; i < nclusters; i++) {
				
			float dist0 = 0;
			float dist1 = 0;
			float dist2 = 0;
			float dist3 = 0;
			float dist4 = 0;
			float dist5 = 0;
			float dist6 = 0;
			float dist7 = 0;
			float ans0  = 0;
			float ans1  = 0;
			float ans2  = 0;
			float ans3  = 0;
			float ans4  = 0;
			float ans5  = 0;
			float ans6  = 0;
			float ans7  = 0;

			// the inner loop: UNROLL_FACTOR = 8
			#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp  = l_clusters[i*nfeatures+l];

				float feature_tmp0 = p_feature0[l];
				float feature_tmp1 = p_feature1[l];
				float feature_tmp2 = p_feature2[l];
				float feature_tmp3 = p_feature3[l];
				float feature_tmp4 = p_feature4[l];
				float feature_tmp5 = p_feature5[l];
				float feature_tmp6 = p_feature6[l];
				float feature_tmp7 = p_feature7[l];

				float sub_tmp0     = feature_tmp0 - cluster_tmp;
				float sub_tmp1     = feature_tmp1 - cluster_tmp;
				float sub_tmp2     = feature_tmp2 - cluster_tmp;
				float sub_tmp3     = feature_tmp3 - cluster_tmp;
				float sub_tmp4     = feature_tmp4 - cluster_tmp;
				float sub_tmp5     = feature_tmp5 - cluster_tmp;
				float sub_tmp6     = feature_tmp6 - cluster_tmp;
				float sub_tmp7     = feature_tmp7 - cluster_tmp;

				ans0 += sub_tmp0 * sub_tmp0; 
				ans1 += sub_tmp1 * sub_tmp1; 
				ans2 += sub_tmp2 * sub_tmp2; 
				ans3 += sub_tmp3 * sub_tmp3; 
				ans4 += sub_tmp4 * sub_tmp4; 
				ans5 += sub_tmp5 * sub_tmp5; 
				ans6 += sub_tmp6 * sub_tmp6; 
				ans7 += sub_tmp7 * sub_tmp7; 
			}

			dist0 = ans0;
			dist1 = ans1;
			dist2 = ans2;
			dist3 = ans3;
			dist4 = ans4;
			dist5 = ans5;
			dist6 = ans6;
			dist7 = ans7;

			if (dist0 < min_dist0) {
				min_dist0 = dist0;
				index0    = i;	
			}
			if (dist1 < min_dist1) {
				min_dist1 = dist1;
				index1    = i;	
			}
			if (dist2 < min_dist2) {
				min_dist2 = dist2;
				index2    = i;	
			}
			if (dist3 < min_dist3) {
				min_dist3 = dist3;
				index3    = i;	
			}
			if (dist4 < min_dist4) {
				min_dist4 = dist4;
				index4    = i;	
			}
			if (dist5 < min_dist5) {
				min_dist5 = dist5;
				index5    = i;	
			}
			if (dist6 < min_dist6) {
				min_dist6 = dist6;
				index6    = i;	
			}
			if (dist7 < min_dist7) {
				min_dist7 = dist7;
				index7    = i;	
			}
		}
		membership[point_id0] = index0;
		membership[point_id1] = index1;
		membership[point_id2] = index2;
		membership[point_id3] = index3;
		membership[point_id4] = index4;
		membership[point_id5] = index5;
		membership[point_id6] = index6;
		membership[point_id7] = index7;
	}	 
}
