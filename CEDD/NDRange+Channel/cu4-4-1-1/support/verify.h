#include "common.h"
#include <math.h>

inline int compare_output(unsigned char **all_out_frames, int image_size, const char *file_name, int num_frames, int rowsc, int colsc, int rowsc_, int colsc_) {

    int count_error = 0;
    for(int i = 0; i < num_frames; i++) {

        // Compare to output file
        char FileName[100];
        sprintf(FileName, "%s%d.txt", file_name, i);
        FILE *out_file = fopen(FileName, "r");
        if(!out_file) {
            printf("Error Reading output file\n");
            return 1;
        }
#if PRINT
        printf("Reading Output: %s\n", file_name);
#endif

        for(int r = 0; r < rowsc; r++) {
            for(int c = 0; c < colsc; c++) {
                int pix;
                fscanf(out_file, "%d ", &pix);
                if((int)all_out_frames[i][r*colsc+c] != pix) {
                    if(r > 3 && r < rowsc-32 && c > 3 && c < colsc-32){
                        count_error++;
                    }
                }
            }
            // Scan until end of row
            if(colsc<colsc_) fscanf(out_file, "%*[^\n]\n");
        }
        // Scan until end of frame
        for(int rr=rowsc;rr<rowsc_;rr++) fscanf(out_file, "%*[^\n]\n");

        fclose(out_file);
    }

	//printf("error: %d\n", count_error);

    if((float)count_error / (float)(image_size * num_frames) >= 1e-6){
        printf("Test failed\n");
        exit(EXIT_FAILURE);
    }
    return 0;
}

inline void verify(unsigned char **all_out_frames, int image_size, const char *file_name, int num_frames, int rowsc, int colsc, int rowsc_, int colsc_) {
    compare_output(all_out_frames, image_size, file_name, num_frames, rowsc, colsc, rowsc_, colsc_);
}
