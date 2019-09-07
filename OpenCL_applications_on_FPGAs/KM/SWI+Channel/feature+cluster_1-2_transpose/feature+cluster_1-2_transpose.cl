#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

	channel float  c[2];
	channel float8 c_feature[2];

__kernel 
void kmeans_in(__global float  *restrict feature,
				__global float  *restrict clusters,
				int     npoints,
				int     nclusters,
				int     nfeatures ) {

	for (int i = 0; i < nclusters * nfeatures; i ++){
		write_channel_altera(c[0], clusters[i]);
		write_channel_altera(c[1], clusters[i]);
	}

	int size = npoints / 2;
	for (int i = 0; i < size; i ++){

		write_channel_altera(c_feature[0], ((__global float8*)feature)[i]);
		write_channel_altera(c_feature[1], ((__global float8*)feature)[i + size]);
	}
}


__kernel 
void kmeans_kernel_0(__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[0]);
	}

	int size = npoints / 2;
	for (int point_id = 0; point_id < size; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[0]);
		p_feature[0] = f.s0;
		p_feature[1] = f.s1;
		p_feature[2] = f.s2;
		p_feature[3] = f.s3;
		p_feature[4] = f.s4;
		p_feature[5] = f.s5;
		p_feature[6] = f.s6;
		p_feature[7] = f.s7;
		
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
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


__kernel 
void kmeans_kernel_1(__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[1]);
	}

	int size = npoints / 2;
	for (int point_id = size; point_id < npoints; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[1]);
		p_feature[0] = f.s0;
		p_feature[1] = f.s1;
		p_feature[2] = f.s2;
		p_feature[3] = f.s3;
		p_feature[4] = f.s4;
		p_feature[5] = f.s5;
		p_feature[6] = f.s6;
		p_feature[7] = f.s7;

		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
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