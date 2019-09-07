#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

	channel float c[8];

__kernel 
void kmeans_in(__global float  *restrict clusters,
				int     nclusters,
				int     nfeatures ) {

	for (int i = 0; i < nclusters * nfeatures; i ++){
		write_channel_altera(c[0], clusters[i]);
		write_channel_altera(c[1], clusters[i]);
		write_channel_altera(c[2], clusters[i]);
		write_channel_altera(c[3], clusters[i]);
		write_channel_altera(c[4], clusters[i]);
		write_channel_altera(c[5], clusters[i]);
		write_channel_altera(c[6], clusters[i]);
		write_channel_altera(c[7], clusters[i]);
	}
}



__kernel 
void kmeans_kernel_0(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[0]);
	}

	int cut0 = npoints / 8;
	for (int point_id = 0; point_id < cut0; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_1(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[1]);
	}

	int cut0 = npoints / 8;
	int cut1 = cut0 * 2;
	for (int point_id = cut0; point_id < cut1; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_2(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[2]);
	}

	int cut0 = npoints / 8;
	int cut1 = cut0 * 2;
	int cut2 = cut0 * 3;
	for (int point_id = cut1; point_id < cut2; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_3(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[3]);
	}

	int cut0 = npoints / 8;
	int cut2 = cut0 * 3;
	int cut3 = cut0 * 4;
	for (int point_id = cut2; point_id < cut3; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_4(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[4]);
	}

	int cut0 = npoints / 8;
	int cut2 = cut0 * 4;
	int cut3 = cut0 * 5;
	for (int point_id = cut2; point_id < cut3; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_5(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[5]);
	}

	int cut0 = npoints / 8;
	int cut2 = cut0 * 5;
	int cut3 = cut0 * 6;
	for (int point_id = cut2; point_id < cut3; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_6(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[6]);
	}

	int cut0 = npoints / 8;
	int cut2 = cut0 * 6;
	int cut3 = cut0 * 7;
	for (int point_id = cut2; point_id < cut3; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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
void kmeans_kernel_7(__global float  *restrict feature,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = read_channel_altera(c[7]);
	}

	int cut0 = npoints / 8;
	int cut2 = cut0 * 7;
	for (int point_id = cut2; point_id < npoints; point_id ++) {
	
		float min_dist = FLT_MAX;
			
		//#pragma unroll UNROLL_FACTOR_OUTER
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			//#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];
				float feature_tmp = feature[l * npoints + point_id];
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