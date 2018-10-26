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

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];

	for (int i = 0; i < nclusters; i ++){
		l_clusters[i * NUM_FEATURE + 0] = clusters[i * NUM_FEATURE + 0];
		l_clusters[i * NUM_FEATURE + 1] = clusters[i * NUM_FEATURE + 1];
		l_clusters[i * NUM_FEATURE + 2] = clusters[i * NUM_FEATURE + 2];
		l_clusters[i * NUM_FEATURE + 3] = clusters[i * NUM_FEATURE + 3];
		l_clusters[i * NUM_FEATURE + 4] = clusters[i * NUM_FEATURE + 4];
		l_clusters[i * NUM_FEATURE + 5] = clusters[i * NUM_FEATURE + 5];
		l_clusters[i * NUM_FEATURE + 6] = clusters[i * NUM_FEATURE + 6];
		l_clusters[i * NUM_FEATURE + 7] = clusters[i * NUM_FEATURE + 7];
	}

	for (int point_id = 0; point_id < npoints; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		p_feature[0] = feature[point_id * nfeatures + 0];
		p_feature[1] = feature[point_id * nfeatures + 1];
		p_feature[2] = feature[point_id * nfeatures + 2];
		p_feature[3] = feature[point_id * nfeatures + 3];
		p_feature[4] = feature[point_id * nfeatures + 4];
		p_feature[5] = feature[point_id * nfeatures + 5];
		p_feature[6] = feature[point_id * nfeatures + 6];
		p_feature[7] = feature[point_id * nfeatures + 7];

		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans[NUM_FEATURE];

			#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = p_feature[l];
				float sub_tmp = feature_tmp - cluster_tmp;
				ans[l] += sub_tmp * sub_tmp; 
			}
			dist = ans[0] + ans[1] + ans[2] + ans[3] + ans[4] + ans[5] + ans[6] + ans[7];
			
			if (dist < min_dist) {
				min_dist = dist;
				index    = i;	
			}
		}
		membership[point_id] = index;
	}	 
}
