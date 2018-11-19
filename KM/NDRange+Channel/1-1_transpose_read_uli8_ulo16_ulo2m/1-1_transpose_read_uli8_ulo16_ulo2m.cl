#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8


typedef struct {
	int pos;
	float8 feature;
} Channel_type;

	channel Channel_type chan[2];

// gs: npoints / 2
__kernel 
void kmeans_in(__global float  *restrict feature) {

	Channel_type c0, c1;

	int p  = get_global_id(0);
	c0.pos = p * 2;
	c1.pos = p * 2 + 1;

	c0.feature = ((__global float8*)feature)[c0.pos];
	c1.feature = ((__global float8*)feature)[c1.pos];

	write_channel_altera(chan[0], c0);
	write_channel_altera(chan[1], c1);
}


__kernel 
void kmeans_kernel_0(__global float  *restrict clusters,
			  __global int    *restrict membership,
				int     nclusters,
				int     nfeatures ) {

	Channel_type c0 = read_channel_altera(chan[0]);
	Channel_type c1 = read_channel_altera(chan[1]);

	int point_id_0 = c0.pos;
	int point_id_1 = c1.pos;
	int local_id = get_local_id(0);
    int index_0 = 0;
	int index_1 = 0;

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

	float p_feature_0[NUM_FEATURE];
	float p_feature_1[NUM_FEATURE];
	p_feature_0[0] = c0.feature.s0;
	p_feature_0[1] = c0.feature.s1;
	p_feature_0[2] = c0.feature.s2;
	p_feature_0[3] = c0.feature.s3;
	p_feature_0[4] = c0.feature.s4;
	p_feature_0[5] = c0.feature.s5;
	p_feature_0[6] = c0.feature.s6;
	p_feature_0[7] = c0.feature.s7;
	p_feature_1[0] = c1.feature.s0;
	p_feature_1[1] = c1.feature.s1;
	p_feature_1[2] = c1.feature.s2;
	p_feature_1[3] = c1.feature.s3;
	p_feature_1[4] = c1.feature.s4;
	p_feature_1[5] = c1.feature.s5;
	p_feature_1[6] = c1.feature.s6;
	p_feature_1[7] = c1.feature.s7;

    barrier(CLK_LOCAL_MEM_FENCE);	 
	
	float min_dist_0 = FLT_MAX;
	float min_dist_1 = FLT_MAX;
			
	#pragma unroll 16
	for (int i=0; i < nclusters; i++) {
				
		float dist_0 = 0;
		float ans_0  = 0;
		float dist_1 = 0;
		float ans_1  = 0;

		#pragma unroll 8
		for (int l = 0; l < nfeatures; l++){
			float cluster_tmp   = l_clusters[i*nfeatures+l];
			float feature_tmp_0 = p_feature_0[l];
			float feature_tmp_1 = p_feature_1[l];
			float sub_tmp_0 = feature_tmp_0 - cluster_tmp;
			float sub_tmp_1 = feature_tmp_1 - cluster_tmp;
			ans_0 += sub_tmp_0 * sub_tmp_0; 
			ans_1 += sub_tmp_1 * sub_tmp_1; 
		}
		dist_0 = ans_0;
		dist_1 = ans_1;

		if (dist_0 < min_dist_0) {
			min_dist_0 = dist_0;
			index_0    = i;	
		}

		if (dist_1 < min_dist_1) {
			min_dist_1 = dist_1;
			index_1    = i;	
		}
	}
	membership[point_id_0] = index_0;
	membership[point_id_1] = index_1;
}

