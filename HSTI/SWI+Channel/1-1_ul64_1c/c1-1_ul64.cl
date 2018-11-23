#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"


	channel uint16 chan[4];


// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel 
void Histogram_in(unsigned int size, __global uint *data) {

	uint size2 = size >> 6;

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
void Histogram_0(unsigned int size, unsigned int bins, __global unsigned int *histo) {
    
    unsigned int l_histo_0[256];
	unsigned int l_histo_1[256];
	unsigned int l_histo_2[256];
	unsigned int l_histo_3[256];
	unsigned int l_histo_4[256];
	unsigned int l_histo_5[256];
	unsigned int l_histo_6[256];
	unsigned int l_histo_7[256];
	unsigned int l_histo_8[256];
	unsigned int l_histo_9[256];
	unsigned int l_histo_10[256];
	unsigned int l_histo_11[256];
	unsigned int l_histo_12[256];
	unsigned int l_histo_13[256];
	unsigned int l_histo_14[256];
	unsigned int l_histo_15[256];
    unsigned int l_histo_16[256];
	unsigned int l_histo_17[256];
	unsigned int l_histo_18[256];
	unsigned int l_histo_19[256];
	unsigned int l_histo_20[256];
	unsigned int l_histo_21[256];
	unsigned int l_histo_22[256];
	unsigned int l_histo_23[256];
	unsigned int l_histo_24[256];
	unsigned int l_histo_25[256];
	unsigned int l_histo_26[256];
	unsigned int l_histo_27[256];
	unsigned int l_histo_28[256];
	unsigned int l_histo_29[256];
	unsigned int l_histo_30[256];
	unsigned int l_histo_31[256];
    unsigned int l_histo_32[256];
	unsigned int l_histo_33[256];
	unsigned int l_histo_34[256];
	unsigned int l_histo_35[256];
	unsigned int l_histo_36[256];
	unsigned int l_histo_37[256];
	unsigned int l_histo_38[256];
	unsigned int l_histo_39[256];
	unsigned int l_histo_40[256];
	unsigned int l_histo_41[256];
	unsigned int l_histo_42[256];
	unsigned int l_histo_43[256];
	unsigned int l_histo_44[256];
	unsigned int l_histo_45[256];
	unsigned int l_histo_46[256];
	unsigned int l_histo_47[256];
    unsigned int l_histo_48[256];
	unsigned int l_histo_49[256];
	unsigned int l_histo_50[256];
	unsigned int l_histo_51[256];
	unsigned int l_histo_52[256];
	unsigned int l_histo_53[256];
	unsigned int l_histo_54[256];
	unsigned int l_histo_55[256];
	unsigned int l_histo_56[256];
	unsigned int l_histo_57[256];
	unsigned int l_histo_58[256];
	unsigned int l_histo_59[256];
	unsigned int l_histo_60[256];
	unsigned int l_histo_61[256];
	unsigned int l_histo_62[256];
	unsigned int l_histo_63[256];

    for(int pos = 0; pos < bins; pos++) {
        l_histo_0[pos] = 0;
		l_histo_1[pos] = 0;
		l_histo_2[pos] = 0;
		l_histo_3[pos] = 0;
		l_histo_4[pos] = 0;
		l_histo_5[pos] = 0;
		l_histo_6[pos] = 0;
		l_histo_7[pos] = 0;
		l_histo_8[pos] = 0;
		l_histo_9[pos] = 0;
		l_histo_10[pos] = 0;
		l_histo_11[pos] = 0;
		l_histo_12[pos] = 0;
		l_histo_13[pos] = 0;
		l_histo_14[pos] = 0;
		l_histo_15[pos] = 0;
        l_histo_16[pos] = 0;
		l_histo_17[pos] = 0;
		l_histo_18[pos] = 0;
		l_histo_19[pos] = 0;
		l_histo_20[pos] = 0;
		l_histo_21[pos] = 0;
		l_histo_22[pos] = 0;
		l_histo_23[pos] = 0;
		l_histo_24[pos] = 0;
		l_histo_25[pos] = 0;
		l_histo_26[pos] = 0;
		l_histo_27[pos] = 0;
		l_histo_28[pos] = 0;
		l_histo_29[pos] = 0;
		l_histo_30[pos] = 0;
		l_histo_31[pos] = 0;
        l_histo_32[pos] = 0;
		l_histo_33[pos] = 0;
		l_histo_34[pos] = 0;
		l_histo_35[pos] = 0;
		l_histo_36[pos] = 0;
		l_histo_37[pos] = 0;
		l_histo_38[pos] = 0;
		l_histo_39[pos] = 0;
		l_histo_40[pos] = 0;
		l_histo_41[pos] = 0;
		l_histo_42[pos] = 0;
		l_histo_43[pos] = 0;
		l_histo_44[pos] = 0;
		l_histo_45[pos] = 0;
		l_histo_46[pos] = 0;
		l_histo_47[pos] = 0;
        l_histo_48[pos] = 0;
		l_histo_49[pos] = 0;
		l_histo_50[pos] = 0;
		l_histo_51[pos] = 0;
		l_histo_52[pos] = 0;
		l_histo_53[pos] = 0;
		l_histo_54[pos] = 0;
		l_histo_55[pos] = 0;
		l_histo_56[pos] = 0;
		l_histo_57[pos] = 0;
		l_histo_58[pos] = 0;
		l_histo_59[pos] = 0;
		l_histo_60[pos] = 0;
		l_histo_61[pos] = 0;
		l_histo_62[pos] = 0;
		l_histo_63[pos] = 0;
    }

	uint size2 = size >> 6;
    for(int i = 0; i < size2; i ++) {
    
        uint16 data_0 = read_channel_altera(chan[0]);
        uint16 data_1 = read_channel_altera(chan[1]);
        uint16 data_2 = read_channel_altera(chan[2]);
        uint16 data_3 = read_channel_altera(chan[3]);
        unsigned int d0 = data_0.s0;
		unsigned int d1 = data_0.s1;
		unsigned int d2 = data_0.s2;
		unsigned int d3 = data_0.s3;
		unsigned int d4 = data_0.s4;
		unsigned int d5 = data_0.s5;
		unsigned int d6 = data_0.s6;
		unsigned int d7 = data_0.s7;
		unsigned int d8 = data_0.s8;
		unsigned int d9 = data_0.s9;
		unsigned int d10 = data_0.sA;
		unsigned int d11 = data_0.sB;
		unsigned int d12 = data_0.sC;
		unsigned int d13 = data_0.sD;
		unsigned int d14 = data_0.sE;
		unsigned int d15 = data_0.sF;
        unsigned int d16 = data_1.s0;
		unsigned int d17 = data_1.s1;
		unsigned int d18 = data_1.s2;
		unsigned int d19 = data_1.s3;
		unsigned int d20 = data_1.s4;
		unsigned int d21 = data_1.s5;
		unsigned int d22 = data_1.s6;
		unsigned int d23 = data_1.s7;
		unsigned int d24 = data_1.s8;
		unsigned int d25 = data_1.s9;
		unsigned int d26 = data_1.sA;
		unsigned int d27 = data_1.sB;
		unsigned int d28 = data_1.sC;
		unsigned int d29 = data_1.sD;
		unsigned int d30 = data_1.sE;
		unsigned int d31 = data_1.sF;
        unsigned int d32 = data_2.s0;
		unsigned int d33 = data_2.s1;
		unsigned int d34 = data_2.s2;
		unsigned int d35 = data_2.s3;
		unsigned int d36 = data_2.s4;
		unsigned int d37 = data_2.s5;
		unsigned int d38 = data_2.s6;
		unsigned int d39 = data_2.s7;
		unsigned int d40 = data_2.s8;
		unsigned int d41 = data_2.s9;
		unsigned int d42 = data_2.sA;
		unsigned int d43 = data_2.sB;
		unsigned int d44 = data_2.sC;
		unsigned int d45 = data_2.sD;
		unsigned int d46 = data_2.sE;
		unsigned int d47 = data_2.sF;
        unsigned int d48 = data_3.s0;
		unsigned int d49 = data_3.s1;
		unsigned int d50 = data_3.s2;
		unsigned int d51 = data_3.s3;
		unsigned int d52 = data_3.s4;
		unsigned int d53 = data_3.s5;
		unsigned int d54 = data_3.s6;
		unsigned int d55 = data_3.s7;
		unsigned int d56 = data_3.s8;
		unsigned int d57 = data_3.s9;
		unsigned int d58 = data_3.sA;
		unsigned int d59 = data_3.sB;
		unsigned int d60 = data_3.sC;
		unsigned int d61 = data_3.sD;
		unsigned int d62 = data_3.sE;
		unsigned int d63 = data_3.sF;
        l_histo_0[((d0 * bins) >> 12)]++;
		l_histo_1[((d1 * bins) >> 12)]++;
		l_histo_2[((d2 * bins) >> 12)]++;
		l_histo_3[((d3 * bins) >> 12)]++;
		l_histo_4[((d4 * bins) >> 12)]++;
		l_histo_5[((d5 * bins) >> 12)]++;
		l_histo_6[((d6 * bins) >> 12)]++;
		l_histo_7[((d7 * bins) >> 12)]++;
		l_histo_8[((d8 * bins) >> 12)]++;
		l_histo_9[((d9 * bins) >> 12)]++;
		l_histo_10[((d10 * bins) >> 12)]++;
		l_histo_11[((d11 * bins) >> 12)]++;
		l_histo_12[((d12 * bins) >> 12)]++;
		l_histo_13[((d13 * bins) >> 12)]++;
		l_histo_14[((d14 * bins) >> 12)]++;
		l_histo_15[((d15 * bins) >> 12)]++;
        l_histo_16[((d16 * bins) >> 12)]++;
		l_histo_17[((d17 * bins) >> 12)]++;
		l_histo_18[((d18 * bins) >> 12)]++;
		l_histo_19[((d19 * bins) >> 12)]++;
		l_histo_20[((d20 * bins) >> 12)]++;
		l_histo_21[((d21 * bins) >> 12)]++;
		l_histo_22[((d22 * bins) >> 12)]++;
		l_histo_23[((d23 * bins) >> 12)]++;
		l_histo_24[((d24 * bins) >> 12)]++;
		l_histo_25[((d25 * bins) >> 12)]++;
		l_histo_26[((d26 * bins) >> 12)]++;
		l_histo_27[((d27 * bins) >> 12)]++;
		l_histo_28[((d28 * bins) >> 12)]++;
		l_histo_29[((d29 * bins) >> 12)]++;
		l_histo_30[((d30 * bins) >> 12)]++;
		l_histo_31[((d31 * bins) >> 12)]++;
        l_histo_32[((d32 * bins) >> 12)]++;
		l_histo_33[((d33 * bins) >> 12)]++;
		l_histo_34[((d34 * bins) >> 12)]++;
		l_histo_35[((d35 * bins) >> 12)]++;
		l_histo_36[((d36 * bins) >> 12)]++;
		l_histo_37[((d37 * bins) >> 12)]++;
		l_histo_38[((d38 * bins) >> 12)]++;
		l_histo_39[((d39 * bins) >> 12)]++;
		l_histo_40[((d40 * bins) >> 12)]++;
		l_histo_41[((d41 * bins) >> 12)]++;
		l_histo_42[((d42 * bins) >> 12)]++;
		l_histo_43[((d43 * bins) >> 12)]++;
		l_histo_44[((d44 * bins) >> 12)]++;
		l_histo_45[((d45 * bins) >> 12)]++;
		l_histo_46[((d46 * bins) >> 12)]++;
		l_histo_47[((d47 * bins) >> 12)]++;
        l_histo_48[((d48 * bins) >> 12)]++;
		l_histo_49[((d49 * bins) >> 12)]++;
		l_histo_50[((d50 * bins) >> 12)]++;
		l_histo_51[((d51 * bins) >> 12)]++;
		l_histo_52[((d52 * bins) >> 12)]++;
		l_histo_53[((d53 * bins) >> 12)]++;
		l_histo_54[((d54 * bins) >> 12)]++;
		l_histo_55[((d55 * bins) >> 12)]++;
		l_histo_56[((d56 * bins) >> 12)]++;
		l_histo_57[((d57 * bins) >> 12)]++;
		l_histo_58[((d58 * bins) >> 12)]++;
		l_histo_59[((d59 * bins) >> 12)]++;
		l_histo_60[((d60 * bins) >> 12)]++;
		l_histo_61[((d61 * bins) >> 12)]++;
		l_histo_62[((d62 * bins) >> 12)]++;
		l_histo_63[((d63 * bins) >> 12)]++;
    }

    for(int pos = 0; pos < bins; pos++) {
        histo[pos] += l_histo_0[pos] + l_histo_1[pos] +
					  l_histo_2[pos] + l_histo_3[pos] +
					  l_histo_4[pos] + l_histo_5[pos] +
					  l_histo_6[pos] + l_histo_7[pos] +
					  l_histo_8[pos] + l_histo_9[pos] +
					  l_histo_10[pos] + l_histo_11[pos] +
					  l_histo_12[pos] + l_histo_13[pos] +
					  l_histo_14[pos] + l_histo_15[pos] +
                      l_histo_16[pos] + l_histo_17[pos] +
					  l_histo_18[pos] + l_histo_19[pos] +
					  l_histo_20[pos] + l_histo_21[pos] +
					  l_histo_22[pos] + l_histo_23[pos] +
					  l_histo_24[pos] + l_histo_25[pos] +
					  l_histo_26[pos] + l_histo_27[pos] +
					  l_histo_28[pos] + l_histo_29[pos] +
					  l_histo_30[pos] + l_histo_31[pos] +
                      l_histo_32[pos] + l_histo_33[pos] +
					  l_histo_34[pos] + l_histo_35[pos] +
					  l_histo_36[pos] + l_histo_37[pos] +
					  l_histo_38[pos] + l_histo_39[pos] +
					  l_histo_40[pos] + l_histo_41[pos] +
					  l_histo_42[pos] + l_histo_43[pos] +
					  l_histo_44[pos] + l_histo_45[pos] +
					  l_histo_46[pos] + l_histo_47[pos] +
                      l_histo_48[pos] + l_histo_49[pos] +
					  l_histo_50[pos] + l_histo_51[pos] +
					  l_histo_52[pos] + l_histo_53[pos] +
					  l_histo_54[pos] + l_histo_55[pos] +
					  l_histo_56[pos] + l_histo_57[pos] +
					  l_histo_58[pos] + l_histo_59[pos] +
					  l_histo_60[pos] + l_histo_61[pos] +
					  l_histo_62[pos] + l_histo_63[pos];
    }
}
