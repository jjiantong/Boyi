#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

__kernel void
kmeans_kernel_c(__global float  *restrict feature,   
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
    barrier(CLK_LOCAL_MEM_FENCE);
	 
    const unsigned int point_size = get_global_size(0);
	for (point_id = get_global_id(0);point_id < npoints; point_id += point_size) {
	
		float min_dist = FLT_MAX;
			
		#pragma unroll 16
		for (int i=0; i < nclusters; i++) {
				
			float dist = 0;
			float ans  = 0;

			#pragma unroll 4
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
