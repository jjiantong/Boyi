#define _OPENCL_COMPILER_

#include "support/common.h"

	channel uint16 chan[4];
	channel uint16 chan_out[4];

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void TQHistogram_in(__global int *data,
    unsigned int gpuQueueSize, unsigned int frame_size) {

	unsigned int size  = gpuQueueSize * frame_size;
	unsigned int size2 = size >> 6;

	for(int i = 0; i < size2; i ++) {

		uint16 data_uint16_0 = ((__global uint16*)data)[i * 4];
        uint16 data_uint16_1 = ((__global uint16*)data)[i * 4 + 1];
        uint16 data_uint16_2 = ((__global uint16*)data)[i * 4 + 2];
        uint16 data_uint16_3 = ((__global uint16*)data)[i * 4 + 3];
		
		write_channel_altera(chan[0], data_uint16_0);
        write_channel_altera(chan[1], data_uint16_1);
        write_channel_altera(chan[2], data_uint16_2);
        write_channel_altera(chan[3], data_uint16_3);
	}
}

__kernel 
void TQHistogram_0(unsigned int gpuQueueSize, unsigned int frame_size, unsigned int n_bins) {

	int histogram_0[256];
	int histogram_1[256];
	int histogram_2[256];
	int histogram_3[256];
	int histogram_4[256];
	int histogram_5[256];
	int histogram_6[256];
	int histogram_7[256];
	int histogram_8[256];
	int histogram_9[256];
	int histogram_10[256];
	int histogram_11[256];
	int histogram_12[256];
	int histogram_13[256];
	int histogram_14[256];
	int histogram_15[256];
    int histogram_16[256];
	int histogram_17[256];
	int histogram_18[256];
	int histogram_19[256];
	int histogram_20[256];
	int histogram_21[256];
	int histogram_22[256];
	int histogram_23[256];
	int histogram_24[256];
	int histogram_25[256];
	int histogram_26[256];
	int histogram_27[256];
	int histogram_28[256];
	int histogram_29[256];
	int histogram_30[256];
	int histogram_31[256];
    int histogram_32[256];
	int histogram_33[256];
	int histogram_34[256];
	int histogram_35[256];
	int histogram_36[256];
	int histogram_37[256];
	int histogram_38[256];
	int histogram_39[256];
	int histogram_40[256];
	int histogram_41[256];
	int histogram_42[256];
	int histogram_43[256];
	int histogram_44[256];
	int histogram_45[256];
	int histogram_46[256];
	int histogram_47[256];
    int histogram_48[256];
	int histogram_49[256];
	int histogram_50[256];
	int histogram_51[256];
	int histogram_52[256];
	int histogram_53[256];
	int histogram_54[256];
	int histogram_55[256];
	int histogram_56[256];
	int histogram_57[256];
	int histogram_58[256];
	int histogram_59[256];
	int histogram_60[256];
	int histogram_61[256];
	int histogram_62[256];
	int histogram_63[256];

	for(int i = 0; i < gpuQueueSize; ++i) {

		for(int j = 0; j < n_bins; j++) {
			histogram_0[j] = 0;
			histogram_1[j] = 0;
			histogram_2[j] = 0;
			histogram_3[j] = 0;
			histogram_4[j] = 0;
			histogram_5[j] = 0;
			histogram_6[j] = 0;
			histogram_7[j] = 0;
			histogram_8[j] = 0;
			histogram_9[j] = 0;
			histogram_10[j] = 0;
			histogram_11[j] = 0;
			histogram_12[j] = 0;
			histogram_13[j] = 0;
			histogram_14[j] = 0;
			histogram_15[j] = 0;
            histogram_16[j] = 0;
			histogram_17[j] = 0;
			histogram_18[j] = 0;
			histogram_19[j] = 0;
			histogram_20[j] = 0;
			histogram_21[j] = 0;
			histogram_22[j] = 0;
			histogram_23[j] = 0;
			histogram_24[j] = 0;
			histogram_25[j] = 0;
			histogram_26[j] = 0;
			histogram_27[j] = 0;
			histogram_28[j] = 0;
			histogram_29[j] = 0;
			histogram_30[j] = 0;
			histogram_31[j] = 0;
            histogram_32[j] = 0;
			histogram_33[j] = 0;
			histogram_34[j] = 0;
			histogram_35[j] = 0;
			histogram_36[j] = 0;
			histogram_37[j] = 0;
			histogram_38[j] = 0;
			histogram_39[j] = 0;
			histogram_40[j] = 0;
			histogram_41[j] = 0;
			histogram_42[j] = 0;
			histogram_43[j] = 0;
			histogram_44[j] = 0;
			histogram_45[j] = 0;
			histogram_46[j] = 0;
			histogram_47[j] = 0;
            histogram_48[j] = 0;
			histogram_49[j] = 0;
			histogram_50[j] = 0;
			histogram_51[j] = 0;
			histogram_52[j] = 0;
			histogram_53[j] = 0;
			histogram_54[j] = 0;
			histogram_55[j] = 0;
			histogram_56[j] = 0;
			histogram_57[j] = 0;
			histogram_58[j] = 0;
			histogram_59[j] = 0;
			histogram_60[j] = 0;
			histogram_61[j] = 0;
			histogram_62[j] = 0;
			histogram_63[j] = 0;
		}

		uint size2 = frame_size >> 6;
		for(int j = 0; j < size2; j++) {
            uint16 d_0 = read_channel_altera(chan[0]);
            uint16 d_1 = read_channel_altera(chan[1]);
            uint16 d_2 = read_channel_altera(chan[2]);
            uint16 d_3 = read_channel_altera(chan[3]);
			int d0 = d_0.s0;
			int d1 = d_0.s1;
			int d2 = d_0.s2;
			int d3 = d_0.s3;
			int d4 = d_0.s4;
			int d5 = d_0.s5;
			int d6 = d_0.s6;
			int d7 = d_0.s7;
            int d8 = d_0.s8;
			int d9 = d_0.s9;
			int d10 = d_0.sA;
			int d11 = d_0.sB;
			int d12 = d_0.sC;
			int d13 = d_0.sD;
			int d14 = d_0.sE;
			int d15 = d_0.sF;
            int d16 = d_1.s0;
			int d17 = d_1.s1;
			int d18 = d_1.s2;
			int d19 = d_1.s3;
			int d20 = d_1.s4;
			int d21 = d_1.s5;
			int d22 = d_1.s6;
			int d23 = d_1.s7;
            int d24 = d_1.s8;
			int d25 = d_1.s9;
			int d26 = d_1.sA;
			int d27 = d_1.sB;
			int d28 = d_1.sC;
			int d29 = d_1.sD;
			int d30 = d_1.sE;
			int d31 = d_1.sF;
            int d32 = d_2.s0;
			int d33 = d_2.s1;
			int d34 = d_2.s2;
			int d35 = d_2.s3;
			int d36 = d_2.s4;
			int d37 = d_2.s5;
			int d38 = d_2.s6;
			int d39 = d_2.s7;
            int d40 = d_2.s8;
			int d41 = d_2.s9;
			int d42 = d_2.sA;
			int d43 = d_2.sB;
			int d44 = d_2.sC;
			int d45 = d_2.sD;
			int d46 = d_2.sE;
			int d47 = d_2.sF;
            int d48 = d_3.s0;
			int d49 = d_3.s1;
			int d50 = d_3.s2;
			int d51 = d_3.s3;
			int d52 = d_3.s4;
			int d53 = d_3.s5;
			int d54 = d_3.s6;
			int d55 = d_3.s7;
            int d56 = d_3.s8;
			int d57 = d_3.s9;
			int d58 = d_3.sA;
			int d59 = d_3.sB;
			int d60 = d_3.sC;
			int d61 = d_3.sD;
			int d62 = d_3.sE;
			int d63 = d_3.sF;
			int value0 = (d0 * n_bins) >> 8;
			int value1 = (d1 * n_bins) >> 8;
			int value2 = (d2 * n_bins) >> 8;
			int value3 = (d3 * n_bins) >> 8;
			int value4 = (d4 * n_bins) >> 8;
			int value5 = (d5 * n_bins) >> 8;
			int value6 = (d6 * n_bins) >> 8;
			int value7 = (d7 * n_bins) >> 8;
            int value8 = (d8 * n_bins) >> 8;
			int value9 = (d9 * n_bins) >> 8;
			int value10 = (d10 * n_bins) >> 8;
			int value11 = (d11 * n_bins) >> 8;
			int value12 = (d12 * n_bins) >> 8;
			int value13 = (d13 * n_bins) >> 8;
			int value14 = (d14 * n_bins) >> 8;
			int value15 = (d15 * n_bins) >> 8;
            int value16 = (d16 * n_bins) >> 8;
			int value17 = (d17 * n_bins) >> 8;
			int value18 = (d18 * n_bins) >> 8;
			int value19 = (d19 * n_bins) >> 8;
			int value20 = (d20 * n_bins) >> 8;
			int value21 = (d21 * n_bins) >> 8;
			int value22 = (d22 * n_bins) >> 8;
			int value23 = (d23 * n_bins) >> 8;
            int value24 = (d24 * n_bins) >> 8;
			int value25 = (d25 * n_bins) >> 8;
			int value26 = (d26 * n_bins) >> 8;
			int value27 = (d27 * n_bins) >> 8;
			int value28 = (d28 * n_bins) >> 8;
			int value29 = (d29 * n_bins) >> 8;
			int value30 = (d30 * n_bins) >> 8;
			int value31 = (d31 * n_bins) >> 8;
            int value32 = (d32 * n_bins) >> 8;
			int value33 = (d33 * n_bins) >> 8;
			int value34 = (d34 * n_bins) >> 8;
			int value35 = (d35 * n_bins) >> 8;
			int value36 = (d36 * n_bins) >> 8;
			int value37 = (d37 * n_bins) >> 8;
			int value38 = (d38 * n_bins) >> 8;
			int value39 = (d39 * n_bins) >> 8;
            int value40 = (d40 * n_bins) >> 8;
			int value41 = (d41 * n_bins) >> 8;
			int value42 = (d42 * n_bins) >> 8;
			int value43 = (d43 * n_bins) >> 8;
			int value44 = (d44 * n_bins) >> 8;
			int value45 = (d45 * n_bins) >> 8;
			int value46 = (d46 * n_bins) >> 8;
			int value47 = (d47 * n_bins) >> 8;
            int value48 = (d48 * n_bins) >> 8;
			int value49 = (d49 * n_bins) >> 8;
			int value50 = (d50 * n_bins) >> 8;
			int value51 = (d51 * n_bins) >> 8;
			int value52 = (d52 * n_bins) >> 8;
			int value53 = (d53 * n_bins) >> 8;
			int value54 = (d54 * n_bins) >> 8;
			int value55 = (d55 * n_bins) >> 8;
            int value56 = (d56 * n_bins) >> 8;
			int value57 = (d57 * n_bins) >> 8;
			int value58 = (d58 * n_bins) >> 8;
			int value59 = (d59 * n_bins) >> 8;
			int value60 = (d60 * n_bins) >> 8;
			int value61 = (d61 * n_bins) >> 8;
			int value62 = (d62 * n_bins) >> 8;
			int value63 = (d63 * n_bins) >> 8;
			histogram_0[value0]++;
			histogram_1[value1]++;
			histogram_2[value2]++;
			histogram_3[value3]++;
			histogram_4[value4]++;
			histogram_5[value5]++;
			histogram_6[value6]++;
			histogram_7[value7]++;
			histogram_8[value8]++;
			histogram_9[value9]++;
			histogram_10[value10]++;
			histogram_11[value11]++;
			histogram_12[value12]++;
			histogram_13[value13]++;
			histogram_14[value14]++;
			histogram_15[value15]++;
            histogram_16[value16]++;
			histogram_17[value17]++;
			histogram_18[value18]++;
			histogram_19[value19]++;
			histogram_20[value20]++;
			histogram_21[value21]++;
			histogram_22[value22]++;
			histogram_23[value23]++;
			histogram_24[value24]++;
			histogram_25[value25]++;
			histogram_26[value26]++;
			histogram_27[value27]++;
			histogram_28[value28]++;
			histogram_29[value29]++;
			histogram_30[value30]++;
			histogram_31[value31]++;
            histogram_32[value32]++;
			histogram_33[value33]++;
			histogram_34[value34]++;
			histogram_35[value35]++;
			histogram_36[value36]++;
			histogram_37[value37]++;
			histogram_38[value38]++;
			histogram_39[value39]++;
			histogram_40[value40]++;
			histogram_41[value41]++;
			histogram_42[value42]++;
			histogram_43[value43]++;
			histogram_44[value44]++;
			histogram_45[value45]++;
			histogram_46[value46]++;
			histogram_47[value47]++;
            histogram_48[value48]++;
			histogram_49[value49]++;
			histogram_50[value50]++;
			histogram_51[value51]++;
			histogram_52[value52]++;
			histogram_53[value53]++;
			histogram_54[value54]++;
			histogram_55[value55]++;
			histogram_56[value56]++;
			histogram_57[value57]++;
			histogram_58[value58]++;
			histogram_59[value59]++;
			histogram_60[value60]++;
			histogram_61[value61]++;
			histogram_62[value62]++;
			histogram_63[value63]++;
		}

		uint16 histo_0[256];
        uint16 histo_1[256];
        uint16 histo_2[256];
        uint16 histo_3[256];
		for(int j = 0; j < n_bins; j++) {
			histo_0[j].s0 = histogram_0[j];
			histo_0[j].s1 = histogram_1[j];
			histo_0[j].s2 = histogram_2[j];
			histo_0[j].s3 = histogram_3[j];
			histo_0[j].s4 = histogram_4[j];
			histo_0[j].s5 = histogram_5[j];
			histo_0[j].s6 = histogram_6[j];
			histo_0[j].s7 = histogram_7[j];
			histo_0[j].s8 = histogram_8[j];
			histo_0[j].s9 = histogram_9[j];
			histo_0[j].sA = histogram_10[j];
			histo_0[j].sB = histogram_11[j];
			histo_0[j].sC = histogram_12[j];
			histo_0[j].sD = histogram_13[j];
			histo_0[j].sE = histogram_14[j];
			histo_0[j].sF = histogram_15[j];
            histo_1[j].s0 = histogram_16[j];
			histo_1[j].s1 = histogram_17[j];
			histo_1[j].s2 = histogram_18[j];
			histo_1[j].s3 = histogram_19[j];
			histo_1[j].s4 = histogram_20[j];
			histo_1[j].s5 = histogram_21[j];
			histo_1[j].s6 = histogram_22[j];
			histo_1[j].s7 = histogram_23[j];
			histo_1[j].s8 = histogram_24[j];
			histo_1[j].s9 = histogram_25[j];
			histo_1[j].sA = histogram_26[j];
			histo_1[j].sB = histogram_27[j];
			histo_1[j].sC = histogram_28[j];
			histo_1[j].sD = histogram_29[j];
			histo_1[j].sE = histogram_30[j];
			histo_1[j].sF = histogram_31[j];
            histo_2[j].s0 = histogram_32[j];
			histo_2[j].s1 = histogram_33[j];
			histo_2[j].s2 = histogram_34[j];
			histo_2[j].s3 = histogram_35[j];
			histo_2[j].s4 = histogram_36[j];
			histo_2[j].s5 = histogram_37[j];
			histo_2[j].s6 = histogram_38[j];
			histo_2[j].s7 = histogram_39[j];
			histo_2[j].s8 = histogram_40[j];
			histo_2[j].s9 = histogram_41[j];
			histo_2[j].sA = histogram_42[j];
			histo_2[j].sB = histogram_43[j];
			histo_2[j].sC = histogram_44[j];
			histo_2[j].sD = histogram_45[j];
			histo_2[j].sE = histogram_46[j];
			histo_2[j].sF = histogram_47[j];
            histo_3[j].s0 = histogram_48[j];
			histo_3[j].s1 = histogram_49[j];
			histo_3[j].s2 = histogram_50[j];
			histo_3[j].s3 = histogram_51[j];
			histo_3[j].s4 = histogram_52[j];
			histo_3[j].s5 = histogram_53[j];
			histo_3[j].s6 = histogram_54[j];
			histo_3[j].s7 = histogram_55[j];
			histo_3[j].s8 = histogram_56[j];
			histo_3[j].s9 = histogram_57[j];
			histo_3[j].sA = histogram_58[j];
			histo_3[j].sB = histogram_59[j];
			histo_3[j].sC = histogram_60[j];
			histo_3[j].sD = histogram_61[j];
			histo_3[j].sE = histogram_62[j];
			histo_3[j].sF = histogram_63[j];
			write_channel_altera(chan_out[0], histo_0[j]);
            write_channel_altera(chan_out[1], histo_1[j]);
            write_channel_altera(chan_out[2], histo_2[j]);
            write_channel_altera(chan_out[3], histo_3[j]);
		}
    }
}


__kernel 
void TQHistogram_out(__global int *histo, unsigned int gpuQueueSize, unsigned int n_bins) {

	for(int i = 0; i < gpuQueueSize; ++i){
		for(int j = 0; j < n_bins; j++){
            uint16 h_0 = read_channel_altera(chan_out[0]);
            uint16 h_1 = read_channel_altera(chan_out[1]);
            uint16 h_2 = read_channel_altera(chan_out[2]);
            uint16 h_3 = read_channel_altera(chan_out[3]);
			histo[i * n_bins + j] = h_0.s0 + h_0.s1 + h_0.s2 + h_0.s3 + h_0.s4 + h_0.s5 + h_0.s6 + h_0.s7
                                  + h_0.s8 + h_0.s9 + h_0.sA + h_0.sB + h_0.sC + h_0.sD + h_0.sE + h_0.sF
                                  + h_1.s0 + h_1.s1 + h_1.s2 + h_1.s3 + h_1.s4 + h_1.s5 + h_1.s6 + h_1.s7
                                  + h_1.s8 + h_1.s9 + h_1.sA + h_1.sB + h_1.sC + h_1.sD + h_1.sE + h_1.sF
                                  + h_2.s0 + h_2.s1 + h_2.s2 + h_2.s3 + h_2.s4 + h_2.s5 + h_2.s6 + h_2.s7
                                  + h_2.s8 + h_2.s9 + h_2.sA + h_2.sB + h_2.sC + h_2.sD + h_2.sE + h_2.sF
                                  + h_3.s0 + h_3.s1 + h_3.s2 + h_3.s3 + h_3.s4 + h_3.s5 + h_3.s6 + h_3.s7
                                  + h_3.s8 + h_3.s9 + h_3.sA + h_3.sB + h_3.sC + h_3.sD + h_3.sE + h_3.sF;
		}
	}		
}
