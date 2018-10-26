#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8


typedef struct {
	int pos;
	float8 feature;
} Channel_type;

	channel Channel_type chan;

__kernel 
void kmeans_kernel_0(__global float  *restrict feature,
			    int     npoints) {

	Channel_type c;
	c.pos     = get_global_id(0);
	c.feature = ((__global float8*)feature)[i]

	c.feature.s0 = feature[0 * npoints + c.pos];
	c.feature.s1 = feature[1 * npoints + c.pos];
	c.feature.s2 = feature[2 * npoints + c.pos];
	c.feature.s3 = feature[3 * npoints + c.pos];
	c.feature.s4 = feature[4 * npoints + c.pos];
	c.feature.s5 = feature[5 * npoints + c.pos];
	c.feature.s6 = feature[6 * npoints + c.pos];
	c.feature.s7 = feature[7 * npoints + c.pos];
	
	write_channel_altera(chan, c);
}


__kernel 
void kmeans_kernel_1(__global float  *restrict clusters,
			  __global int    *restrict membership,
				int     nclusters,
				int     nfeatures ) {

	Channel_type c = read_channel_altera(chan);

	int point_id = c.pos;
	int local_id = get_local_id(0);
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
	p_feature[0] = c.feature.s0;
	p_feature[1] = c.feature.s1;
	p_feature[2] = c.feature.s2;
	p_feature[3] = c.feature.s3;
	p_feature[4] = c.feature.s4;
	p_feature[5] = c.feature.s5;
	p_feature[6] = c.feature.s6;
	p_feature[7] = c.feature.s7;

    barrier(CLK_LOCAL_MEM_FENCE);	 
	
	float min_dist = FLT_MAX;
			
	//#pragma unroll UNROLL_FACTOR_OUTER
	for (int i=0; i < nclusters; i++) {
				
		float dist = 0;
		float ans  = 0;

		//#pragma unroll UNROLL_FACTOR_INNER
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

