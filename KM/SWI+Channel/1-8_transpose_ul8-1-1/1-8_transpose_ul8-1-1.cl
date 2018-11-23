#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

	channel float8 c_feature[8];

__kernel 
void kmeans_in(__global float  *restrict feature,
				int     npoints ) {

	int size = npoints / 8;
	for (int i = 0; i < size; i ++){

		write_channel_altera(c_feature[0], ((__global float8*)feature)[i]);
		write_channel_altera(c_feature[1], ((__global float8*)feature)[i + size]);
		write_channel_altera(c_feature[2], ((__global float8*)feature)[i + 2 * size]);
		write_channel_altera(c_feature[3], ((__global float8*)feature)[i + 3 * size]);
		write_channel_altera(c_feature[4], ((__global float8*)feature)[i + 4 * size]);
		write_channel_altera(c_feature[5], ((__global float8*)feature)[i + 5 * size]);
		write_channel_altera(c_feature[6], ((__global float8*)feature)[i + 6 * size]);
		write_channel_altera(c_feature[7], ((__global float8*)feature)[i + 7 * size]);

	}
}


__kernel 
void kmeans_kernel_0(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	for (int point_id = 0; point_id < cut1; point_id ++) {
	
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


__kernel 
void kmeans_kernel_1(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut2 = 2 * cut1;
	for (int point_id = cut1; point_id < cut2; point_id ++) {
	
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


__kernel 
void kmeans_kernel_2(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut2 = 2 * cut1;
	int cut3 = 3 * cut1;
	for (int point_id = cut2; point_id < cut3; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[2]);
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


__kernel 
void kmeans_kernel_3(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut3 = 3 * cut1;
	int cut4 = 4 * cut1;
	for (int point_id = cut3; point_id < cut4; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[3]);
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


__kernel 
void kmeans_kernel_4(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut4 = 4 * cut1;
	int cut5 = 5 * cut1;
	for (int point_id = cut4; point_id < cut5; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[4]);
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


__kernel 
void kmeans_kernel_5(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut5 = 5 * cut1;
	int cut6 = 6 * cut1;
	for (int point_id = cut5; point_id < cut6; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[5]);
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


__kernel 
void kmeans_kernel_6(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut6 = 6 * cut1;
	int cut7 = 7 * cut1;
	for (int point_id = cut6; point_id < cut7; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[6]);
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


__kernel 
void kmeans_kernel_7(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 8;
	int cut7 = 7 * cut1;
	for (int point_id = cut7; point_id < npoints; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[7]);
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