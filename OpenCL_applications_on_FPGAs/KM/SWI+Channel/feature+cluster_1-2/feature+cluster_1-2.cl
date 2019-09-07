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

	float8 f0, f1;
	int size = npoints / 2;
	for (int i = 0; i < size; i ++){
		f0.s0 = feature[0 * npoints + i];
		f0.s1 = feature[1 * npoints + i];
		f0.s2 = feature[2 * npoints + i];
		f0.s3 = feature[3 * npoints + i];
		f0.s4 = feature[4 * npoints + i];
		f0.s5 = feature[5 * npoints + i];
		f0.s6 = feature[6 * npoints + i];
		f0.s7 = feature[7 * npoints + i];
		f1.s0 = feature[0 * npoints + i + size];
		f1.s1 = feature[1 * npoints + i + size];
		f1.s2 = feature[2 * npoints + i + size];
		f1.s3 = feature[3 * npoints + i + size];
		f1.s4 = feature[4 * npoints + i + size];
		f1.s5 = feature[5 * npoints + i + size];
		f1.s6 = feature[6 * npoints + i + size];
		f1.s7 = feature[7 * npoints + i + size];
		write_channel_altera(c_feature[0], f0);
		write_channel_altera(c_feature[1], f1);
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