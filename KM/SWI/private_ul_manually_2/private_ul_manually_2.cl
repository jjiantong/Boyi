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
	//#pragma unroll 8
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	for (int point_id = 0; point_id < npoints; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		p_feature[0] = feature[0 * npoints + point_id];
		p_feature[1] = feature[1 * npoints + point_id];
		p_feature[2] = feature[2 * npoints + point_id];
		p_feature[3] = feature[3 * npoints + point_id];
		p_feature[4] = feature[4 * npoints + point_id];
		p_feature[5] = feature[5 * npoints + point_id];
		p_feature[6] = feature[6 * npoints + point_id];
		p_feature[7] = feature[7 * npoints + point_id];

		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = p_feature[l];
				float sub_tmp = feature_tmp - cluster_tmp;
				ans += sub_tmp * sub_tmp; 
			}

			dist = ans;
			if (dist < min_dist) {
				min_dist = dist;
				index    = i;	
			}
		}
		membership[point_id] = index;
	}	 
}
