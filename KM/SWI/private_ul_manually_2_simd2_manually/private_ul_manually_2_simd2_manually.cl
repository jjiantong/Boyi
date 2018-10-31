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

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	//#pragma unroll 8
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	for (int point_id = 0; point_id < npoints / 2; point_id ++) {
	
		int point_id0 = point_id * 2;
		int point_id1 = point_id * 2 + 1;
		
		float p_feature0[NUM_FEATURE];
		float p_feature1[NUM_FEATURE];

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

		float min_dist0 = FLT_MAX;
		float min_dist1 = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist0 = 0;
			float dist1 = 0;
			float ans0  = 0;
			float ans1  = 0;

			#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp  = l_clusters[i*nfeatures+l];
				float feature_tmp0 = p_feature0[l];
				float feature_tmp1 = p_feature1[l];
				float sub_tmp0     = feature_tmp0 - cluster_tmp;
				float sub_tmp1     = feature_tmp1 - cluster_tmp;
				ans0 += sub_tmp0 * sub_tmp0; 
				ans1 += sub_tmp1 * sub_tmp1; 
			}

			dist0 = ans0;
			dist1 = ans1;
			if (dist0 < min_dist0) {
				min_dist0 = dist0;
				index0    = i;	
			}
			if (dist1 < min_dist1) {
				min_dist1 = dist1;
				index1    = i;	
			}
		}
		membership[point_id0] = index0;
		membership[point_id1] = index1;
	}	 
}
