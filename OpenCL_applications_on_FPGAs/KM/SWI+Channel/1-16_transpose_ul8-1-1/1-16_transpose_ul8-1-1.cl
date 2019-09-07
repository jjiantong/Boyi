#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

	channel float8 c_feature[16];

__kernel 
void kmeans_in(__global float  *restrict feature,
				int     npoints ) {

	int size = npoints / 16;
	for (int i = 0; i < size; i ++){

		write_channel_altera(c_feature[0], ((__global float8*)feature)[i]);
		write_channel_altera(c_feature[1], ((__global float8*)feature)[i + size]);
		write_channel_altera(c_feature[2], ((__global float8*)feature)[i + 2 * size]);
		write_channel_altera(c_feature[3], ((__global float8*)feature)[i + 3 * size]);
		write_channel_altera(c_feature[4], ((__global float8*)feature)[i + 4 * size]);
		write_channel_altera(c_feature[5], ((__global float8*)feature)[i + 5 * size]);
		write_channel_altera(c_feature[6], ((__global float8*)feature)[i + 6 * size]);
		write_channel_altera(c_feature[7], ((__global float8*)feature)[i + 7 * size]);
		write_channel_altera(c_feature[8], ((__global float8*)feature)[i + 8 * size]);
		write_channel_altera(c_feature[9], ((__global float8*)feature)[i + 9 * size]);
		write_channel_altera(c_feature[10], ((__global float8*)feature)[i + 10 * size]);
		write_channel_altera(c_feature[11], ((__global float8*)feature)[i + 11 * size]);
		write_channel_altera(c_feature[12], ((__global float8*)feature)[i + 12 * size]);
		write_channel_altera(c_feature[13], ((__global float8*)feature)[i + 13 * size]);
		write_channel_altera(c_feature[14], ((__global float8*)feature)[i + 14 * size]);
		write_channel_altera(c_feature[15], ((__global float8*)feature)[i + 15 * size]);
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
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

	int cut1 = npoints / 16;
	int cut7 = 7 * cut1;
	int cut8 = 8 * cut1;
	for (int point_id = cut7; point_id < cut8; point_id ++) {
	
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

__kernel 
void kmeans_kernel_8(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut8 = 8 * cut1;
	int cut9 = 9 * cut1;
	for (int point_id = cut8; point_id < cut9; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[8]);
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
void kmeans_kernel_9(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut9 = 9 * cut1;
	int cut10 = 10 * cut1;
	for (int point_id = cut9; point_id < cut10; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[9]);
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
void kmeans_kernel_10(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut10 = 10 * cut1;
	int cut11 = 11 * cut1;
	for (int point_id = cut10; point_id < cut11; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[10]);
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
void kmeans_kernel_11(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut11 = 11 * cut1;
	int cut12 = 12 * cut1;
	for (int point_id = cut11; point_id < cut12; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[11]);
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
void kmeans_kernel_12(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut12 = 12 * cut1;
	int cut13 = 13 * cut1;
	for (int point_id = cut12; point_id < cut13; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[12]);
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
void kmeans_kernel_13(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut13 = 13 * cut1;
	int cut14 = 14 * cut1;
	for (int point_id = cut13; point_id < cut14; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[13]);
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
void kmeans_kernel_14(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut14 = 14 * cut1;
	int cut15 = 15 * cut1;
	for (int point_id = cut14; point_id < cut15; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[14]);
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
void kmeans_kernel_15(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	int cut1 = npoints / 16;
	int cut15 = 15 * cut1;
	for (int point_id = cut15; point_id < npoints; point_id ++) {
	
		float p_feature[NUM_FEATURE];
		float8 f = read_channel_altera(c_feature[15]);
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