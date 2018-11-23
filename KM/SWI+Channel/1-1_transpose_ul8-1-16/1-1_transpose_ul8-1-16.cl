#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif
#define NUM_CLUSTERS 128
#define NUM_FEATURE  8

	
	typedef struct{
        float8 f[16];
    } Channel_type;
	
	channel Channel_type c_feature;

__kernel 
void kmeans_in(__global float  *restrict feature,
				int     npoints ) {

	int size = npoints / 16;
	for (int i = 0; i < size; i ++){

		Channel_type c_f;
        c_f.f[0] = ((__global float8*)feature)[i];
        c_f.f[1] = ((__global float8*)feature)[i + size];
        c_f.f[2] = ((__global float8*)feature)[i + 2 * size];
        c_f.f[3] = ((__global float8*)feature)[i + 3 * size];
        c_f.f[4] = ((__global float8*)feature)[i + 4 * size];
        c_f.f[5] = ((__global float8*)feature)[i + 5 * size];
        c_f.f[6] = ((__global float8*)feature)[i + 6 * size];
        c_f.f[7] = ((__global float8*)feature)[i + 7 * size];
        c_f.f[8] = ((__global float8*)feature)[i + 8 * size];
        c_f.f[9] = ((__global float8*)feature)[i + 9 * size];
        c_f.f[10] = ((__global float8*)feature)[i + 10 * size];
        c_f.f[11] = ((__global float8*)feature)[i + 11 * size];
        c_f.f[12] = ((__global float8*)feature)[i + 12 * size];
        c_f.f[13] = ((__global float8*)feature)[i + 13 * size];
        c_f.f[14] = ((__global float8*)feature)[i + 14 * size];
        c_f.f[15] = ((__global float8*)feature)[i + 15 * size];
        write_channel_altera(c_feature, c_f);
	}
}


__kernel 
void kmeans_kernel_0(__global float  *restrict clusters,
				__global int    *restrict membership,
			    int     npoints,
				int     nclusters,
				int     nfeatures ) {

	int index0  = 0;
	int index1  = 0;
	int index2  = 0;
	int index3  = 0;
	int index4  = 0;
	int index5  = 0;
	int index6  = 0;
	int index7  = 0;
	int index8  = 0;
	int index9  = 0;
	int index10 = 0;
	int index11 = 0;
	int index12 = 0;
	int index13 = 0;
	int index14 = 0;
	int index15 = 0;

	float l_clusters[NUM_CLUSTERS*NUM_FEATURE];
	for (int i = 0; i < nclusters * nfeatures; i ++){
		l_clusters[i] = clusters[i];
	}

	for (int point_id = 0; point_id < npoints / 16; point_id ++) {
	
		int point_id0  = point_id * 16;
		int point_id1  = point_id * 16 + 1;
		int point_id2  = point_id * 16 + 2;
		int point_id3  = point_id * 16 + 3;
		int point_id4  = point_id * 16 + 4;
		int point_id5  = point_id * 16 + 5;
		int point_id6  = point_id * 16 + 6;
		int point_id7  = point_id * 16 + 7;
		int point_id8  = point_id * 16 + 8;
		int point_id9  = point_id * 16 + 9;
		int point_id10 = point_id * 16 + 10;
		int point_id11 = point_id * 16 + 11;
		int point_id12 = point_id * 16 + 12;
		int point_id13 = point_id * 16 + 13;
		int point_id14 = point_id * 16 + 14;
		int point_id15 = point_id * 16 + 15;
        
        float p_feature0[NUM_FEATURE];
		float p_feature1[NUM_FEATURE];
		float p_feature2[NUM_FEATURE];
		float p_feature3[NUM_FEATURE];
		float p_feature4[NUM_FEATURE];
		float p_feature5[NUM_FEATURE];
		float p_feature6[NUM_FEATURE];
		float p_feature7[NUM_FEATURE];
		float p_feature8[NUM_FEATURE];
		float p_feature9[NUM_FEATURE];
		float p_feature10[NUM_FEATURE];
		float p_feature11[NUM_FEATURE];
		float p_feature12[NUM_FEATURE];
		float p_feature13[NUM_FEATURE];
		float p_feature14[NUM_FEATURE];
		float p_feature15[NUM_FEATURE];
        
		Channel_type c_f;
        c_f = read_channel_altera(c_feature);

		p_feature0[0] = c_f.f[0].s0;
		p_feature0[1] = c_f.f[0].s1;
		p_feature0[2] = c_f.f[0].s2;
		p_feature0[3] = c_f.f[0].s3;
		p_feature0[4] = c_f.f[0].s4;
		p_feature0[5] = c_f.f[0].s5;
		p_feature0[6] = c_f.f[0].s6;
		p_feature0[7] = c_f.f[0].s7;

        p_feature1[0] = c_f.f[1].s0;
		p_feature1[1] = c_f.f[1].s1;
		p_feature1[2] = c_f.f[1].s2;
		p_feature1[3] = c_f.f[1].s3;
		p_feature1[4] = c_f.f[1].s4;
		p_feature1[5] = c_f.f[1].s5;
		p_feature1[6] = c_f.f[1].s6;
		p_feature1[7] = c_f.f[1].s7;

        p_feature2[0] = c_f.f[2].s0;
		p_feature2[1] = c_f.f[2].s1;
		p_feature2[2] = c_f.f[2].s2;
		p_feature2[3] = c_f.f[2].s3;
		p_feature2[4] = c_f.f[2].s4;
		p_feature2[5] = c_f.f[2].s5;
		p_feature2[6] = c_f.f[2].s6;
		p_feature2[7] = c_f.f[2].s7;

        p_feature3[0] = c_f.f[3].s0;
		p_feature3[1] = c_f.f[3].s1;
		p_feature3[2] = c_f.f[3].s2;
		p_feature3[3] = c_f.f[3].s3;
		p_feature3[4] = c_f.f[3].s4;
		p_feature3[5] = c_f.f[3].s5;
		p_feature3[6] = c_f.f[3].s6;
		p_feature3[7] = c_f.f[3].s7;

        p_feature4[0] = c_f.f[4].s0;
		p_feature4[1] = c_f.f[4].s1;
		p_feature4[2] = c_f.f[4].s2;
		p_feature4[3] = c_f.f[4].s3;
		p_feature4[4] = c_f.f[4].s4;
		p_feature4[5] = c_f.f[4].s5;
		p_feature4[6] = c_f.f[4].s6;
		p_feature4[7] = c_f.f[4].s7;

        p_feature5[0] = c_f.f[5].s0;
		p_feature5[1] = c_f.f[5].s1;
		p_feature5[2] = c_f.f[5].s2;
		p_feature5[3] = c_f.f[5].s3;
		p_feature5[4] = c_f.f[5].s4;
		p_feature5[5] = c_f.f[5].s5;
		p_feature5[6] = c_f.f[5].s6;
		p_feature5[7] = c_f.f[5].s7;

        p_feature6[0] = c_f.f[6].s0;
		p_feature6[1] = c_f.f[6].s1;
		p_feature6[2] = c_f.f[6].s2;
		p_feature6[3] = c_f.f[6].s3;
		p_feature6[4] = c_f.f[6].s4;
		p_feature6[5] = c_f.f[6].s5;
		p_feature6[6] = c_f.f[6].s6;
		p_feature6[7] = c_f.f[6].s7;

        p_feature7[0] = c_f.f[7].s0;
		p_feature7[1] = c_f.f[7].s1;
		p_feature7[2] = c_f.f[7].s2;
		p_feature7[3] = c_f.f[7].s3;
		p_feature7[4] = c_f.f[7].s4;
		p_feature7[5] = c_f.f[7].s5;
		p_feature7[6] = c_f.f[7].s6;
		p_feature7[7] = c_f.f[7].s7;

        p_feature8[0] = c_f.f[8].s0;
		p_feature8[1] = c_f.f[8].s1;
		p_feature8[2] = c_f.f[8].s2;
		p_feature8[3] = c_f.f[8].s3;
		p_feature8[4] = c_f.f[8].s4;
		p_feature8[5] = c_f.f[8].s5;
		p_feature8[6] = c_f.f[8].s6;
		p_feature8[7] = c_f.f[8].s7;

        p_feature9[0] = c_f.f[9].s0;
		p_feature9[1] = c_f.f[9].s1;
		p_feature9[2] = c_f.f[9].s2;
		p_feature9[3] = c_f.f[9].s3;
		p_feature9[4] = c_f.f[9].s4;
		p_feature9[5] = c_f.f[9].s5;
		p_feature9[6] = c_f.f[9].s6;
		p_feature9[7] = c_f.f[9].s7;

        p_feature10[0] = c_f.f[10].s0;
		p_feature10[1] = c_f.f[10].s1;
		p_feature10[2] = c_f.f[10].s2;
		p_feature10[3] = c_f.f[10].s3;
		p_feature10[4] = c_f.f[10].s4;
		p_feature10[5] = c_f.f[10].s5;
		p_feature10[6] = c_f.f[10].s6;
		p_feature10[7] = c_f.f[10].s7;

        p_feature11[0] = c_f.f[11].s0;
		p_feature11[1] = c_f.f[11].s1;
		p_feature11[2] = c_f.f[11].s2;
		p_feature11[3] = c_f.f[11].s3;
		p_feature11[4] = c_f.f[11].s4;
		p_feature11[5] = c_f.f[11].s5;
		p_feature11[6] = c_f.f[11].s6;
		p_feature11[7] = c_f.f[11].s7;

        p_feature12[0] = c_f.f[12].s0;
		p_feature12[1] = c_f.f[12].s1;
		p_feature12[2] = c_f.f[12].s2;
		p_feature12[3] = c_f.f[12].s3;
		p_feature12[4] = c_f.f[12].s4;
		p_feature12[5] = c_f.f[12].s5;
		p_feature12[6] = c_f.f[12].s6;
		p_feature12[7] = c_f.f[12].s7;

        p_feature13[0] = c_f.f[13].s0;
		p_feature13[1] = c_f.f[13].s1;
		p_feature13[2] = c_f.f[13].s2;
		p_feature13[3] = c_f.f[13].s3;
		p_feature13[4] = c_f.f[13].s4;
		p_feature13[5] = c_f.f[13].s5;
		p_feature13[6] = c_f.f[13].s6;
		p_feature13[7] = c_f.f[13].s7;

        p_feature14[0] = c_f.f[14].s0;
		p_feature14[1] = c_f.f[14].s1;
		p_feature14[2] = c_f.f[14].s2;
		p_feature14[3] = c_f.f[14].s3;
		p_feature14[4] = c_f.f[14].s4;
		p_feature14[5] = c_f.f[14].s5;
		p_feature14[6] = c_f.f[14].s6;
		p_feature14[7] = c_f.f[14].s7;

        p_feature15[0] = c_f.f[15].s0;
		p_feature15[1] = c_f.f[15].s1;
		p_feature15[2] = c_f.f[15].s2;
		p_feature15[3] = c_f.f[15].s3;
		p_feature15[4] = c_f.f[15].s4;
		p_feature15[5] = c_f.f[15].s5;
		p_feature15[6] = c_f.f[15].s6;
		p_feature15[7] = c_f.f[15].s7;
		
		float min_dist0  = FLT_MAX;
		float min_dist1  = FLT_MAX;
		float min_dist2  = FLT_MAX;
		float min_dist3  = FLT_MAX;
		float min_dist4  = FLT_MAX;
		float min_dist5  = FLT_MAX;
		float min_dist6  = FLT_MAX;
		float min_dist7  = FLT_MAX;
		float min_dist8  = FLT_MAX;
		float min_dist9  = FLT_MAX;
		float min_dist10 = FLT_MAX;
		float min_dist11 = FLT_MAX;
		float min_dist12 = FLT_MAX;
		float min_dist13 = FLT_MAX;
		float min_dist14 = FLT_MAX;
		float min_dist15 = FLT_MAX;
			
		for (int i=0; i < nclusters; i++) {
				
			float dist0  = 0;
			float dist1  = 0;
			float dist2  = 0;
			float dist3  = 0;
			float dist4  = 0;
			float dist5  = 0;
			float dist6  = 0;
			float dist7  = 0;
			float dist8  = 0;
			float dist9  = 0;
			float dist10 = 0;
			float dist11 = 0;
			float dist12 = 0;
			float dist13 = 0;
			float dist14 = 0;
			float dist15 = 0;
			float ans0   = 0;
			float ans1   = 0;
			float ans2   = 0;
			float ans3   = 0;
			float ans4   = 0;
			float ans5   = 0;
			float ans6   = 0;
			float ans7   = 0;
			float ans8   = 0;
			float ans9   = 0;
			float ans10  = 0;
			float ans11  = 0;
			float ans12  = 0;
			float ans13  = 0;
			float ans14  = 0;
			float ans15  = 0;

            // the inner loop: UNROLL_FACTOR = 8
			#pragma unroll 8
			for (int l = 0; l < nfeatures; l++){
				float cluster_tmp = l_clusters[i*nfeatures+l];

				float feature_tmp0  = p_feature0[l];
				float feature_tmp1  = p_feature1[l];
				float feature_tmp2  = p_feature2[l];
				float feature_tmp3  = p_feature3[l];
				float feature_tmp4  = p_feature4[l];
				float feature_tmp5  = p_feature5[l];
				float feature_tmp6  = p_feature6[l];
				float feature_tmp7  = p_feature7[l];
				float feature_tmp8  = p_feature8[l];
				float feature_tmp9  = p_feature9[l];
				float feature_tmp10 = p_feature10[l];
				float feature_tmp11 = p_feature11[l];
				float feature_tmp12 = p_feature12[l];
				float feature_tmp13 = p_feature13[l];
				float feature_tmp14 = p_feature14[l];
				float feature_tmp15 = p_feature15[l];

				float sub_tmp0      = feature_tmp0 - cluster_tmp;
				float sub_tmp1      = feature_tmp1 - cluster_tmp;
				float sub_tmp2      = feature_tmp2 - cluster_tmp;
				float sub_tmp3      = feature_tmp3 - cluster_tmp;
				float sub_tmp4      = feature_tmp4 - cluster_tmp;
				float sub_tmp5      = feature_tmp5 - cluster_tmp;
				float sub_tmp6      = feature_tmp6 - cluster_tmp;
				float sub_tmp7      = feature_tmp7 - cluster_tmp;
				float sub_tmp8      = feature_tmp8 - cluster_tmp;
				float sub_tmp9      = feature_tmp9 - cluster_tmp;
				float sub_tmp10     = feature_tmp10 - cluster_tmp;
				float sub_tmp11     = feature_tmp11 - cluster_tmp;
				float sub_tmp12     = feature_tmp12 - cluster_tmp;
				float sub_tmp13     = feature_tmp13 - cluster_tmp;
				float sub_tmp14     = feature_tmp14 - cluster_tmp;
				float sub_tmp15     = feature_tmp15 - cluster_tmp;

				ans0  += sub_tmp0 * sub_tmp0; 
				ans1  += sub_tmp1 * sub_tmp1; 
				ans2  += sub_tmp2 * sub_tmp2; 
				ans3  += sub_tmp3 * sub_tmp3; 
				ans4  += sub_tmp4 * sub_tmp4; 
				ans5  += sub_tmp5 * sub_tmp5; 
				ans6  += sub_tmp6 * sub_tmp6; 
				ans7  += sub_tmp7 * sub_tmp7; 
				ans8  += sub_tmp8 * sub_tmp8; 
				ans9  += sub_tmp9 * sub_tmp9; 
				ans10 += sub_tmp10 * sub_tmp10; 
				ans11 += sub_tmp11 * sub_tmp11; 
				ans12 += sub_tmp12 * sub_tmp12; 
				ans13 += sub_tmp13 * sub_tmp13; 
				ans14 += sub_tmp14 * sub_tmp14; 
				ans15 += sub_tmp15 * sub_tmp15; 
			}

			dist0  = ans0;
			dist1  = ans1;
			dist2  = ans2;
			dist3  = ans3;
			dist4  = ans4;
			dist5  = ans5;
			dist6  = ans6;
			dist7  = ans7;
			dist8  = ans8;
			dist9  = ans9;
			dist10 = ans10;
			dist11 = ans11;
			dist12 = ans12;
			dist13 = ans13;
			dist14 = ans14;
			dist15 = ans15;

			if (dist0 < min_dist0) {
				min_dist0 = dist0;
				index0    = i;	
			}
			if (dist1 < min_dist1) {
				min_dist1 = dist1;
				index1    = i;	
			}
			if (dist2 < min_dist2) {
				min_dist2 = dist2;
				index2    = i;	
			}
			if (dist3 < min_dist3) {
				min_dist3 = dist3;
				index3    = i;	
			}
			if (dist4 < min_dist4) {
				min_dist4 = dist4;
				index4    = i;	
			}
			if (dist5 < min_dist5) {
				min_dist5 = dist5;
				index5    = i;	
			}
			if (dist6 < min_dist6) {
				min_dist6 = dist6;
				index6    = i;	
			}
			if (dist7 < min_dist7) {
				min_dist7 = dist7;
				index7    = i;	
			}
			if (dist8 < min_dist8) {
				min_dist8 = dist8;
				index8    = i;	
			}
			if (dist9 < min_dist9) {
				min_dist9 = dist9;
				index9    = i;	
			}
			if (dist10 < min_dist10) {
				min_dist10 = dist10;
				index10    = i;	
			}
			if (dist11 < min_dist11) {
				min_dist11 = dist11;
				index11    = i;	
			}
			if (dist12 < min_dist12) {
				min_dist12 = dist12;
				index12    = i;	
			}
			if (dist13 < min_dist13) {
				min_dist13 = dist13;
				index13    = i;	
			}
			if (dist14 < min_dist14) {
				min_dist14 = dist14;
				index14    = i;	
			}
			if (dist15 < min_dist15) {
				min_dist15 = dist15;
				index15    = i;	
			}
		}
		membership[point_id0]  = index0;
		membership[point_id1]  = index1;
		membership[point_id2]  = index2;
		membership[point_id3]  = index3;
		membership[point_id4]  = index4;
		membership[point_id5]  = index5;
		membership[point_id6]  = index6;
		membership[point_id7]  = index7;
		membership[point_id8]  = index8;
		membership[point_id9]  = index9;
		membership[point_id10] = index10;
		membership[point_id11] = index11;
		membership[point_id12] = index12;
		membership[point_id13] = index13;
		membership[point_id14] = index14;
		membership[point_id15] = index15;
	}	 
}