#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

__kernel 
//__attribute((num_compute_units(2)))
void kmeans_kernel_c(__global float  *restrict feature,   
			  __global float  *restrict clusters,
			  __global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	unsigned int point_id = get_global_id(0);
	unsigned int local_id = get_local_id(0);
    int index = 0;

	__local float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	if (local_id < nclusters){

		l_clusters[local_id*NUM_FEATURE+0] = clusters[local_id*NUM_FEATURE+0];
		l_clusters[local_id*NUM_FEATURE+1] = clusters[local_id*NUM_FEATURE+1];
		l_clusters[local_id*NUM_FEATURE+2] = clusters[local_id*NUM_FEATURE+2];
		l_clusters[local_id*NUM_FEATURE+3] = clusters[local_id*NUM_FEATURE+3];
		l_clusters[local_id*NUM_FEATURE+4] = clusters[local_id*NUM_FEATURE+4];
		l_clusters[local_id*NUM_FEATURE+5] = clusters[local_id*NUM_FEATURE+5];
		l_clusters[local_id*NUM_FEATURE+6] = clusters[local_id*NUM_FEATURE+6];
		l_clusters[local_id*NUM_FEATURE+7] = clusters[local_id*NUM_FEATURE+7];	  
	}

	float p_feature[NUM_FEATURE];
	p_feature[0] = feature[0 * npoints + point_id];
	p_feature[1] = feature[1 * npoints + point_id];
	p_feature[2] = feature[2 * npoints + point_id];
	p_feature[3] = feature[3 * npoints + point_id];
	p_feature[4] = feature[4 * npoints + point_id];
	p_feature[5] = feature[5 * npoints + point_id];
	p_feature[6] = feature[6 * npoints + point_id];
	p_feature[7] = feature[7 * npoints + point_id];

    barrier(CLK_LOCAL_MEM_FENCE);	 
	
	float min_dist = FLT_MAX;
			
	#pragma unroll 20
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
