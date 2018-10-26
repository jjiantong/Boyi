#define _CRT_SECURE_NO_DEPRECATE 1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <math.h>
#include <fcntl.h>
#include <omp.h>
#include "kmeans.h"
#include <unistd.h>
#include <time.h>

#define AOCL_ALIGNMENT 64
#include <malloc.h>

extern double wtime(void);


/*---< main() >-------------------------------------------------------------*/
int setup(int argc, char **argv) {

		char   *filename = "input/input.txt";
		float  *buf;
		char	line[1024];
		float	threshold = 0.001;		/* default value */
		int		nclusters=128;			/* default value */
		int		nfeatures = 8;
		int		npoints = 25600;
		float	len;		         
		float **features;
		float **cluster_centres=NULL;
		int		nloops = 1;				/* default value */		
		int		isOutput = 0;



	/* ============== I/O begin ==============*/
    

    /* allocate space for features[] and read attributes of all objects */
	buf         = (float*) _aligned_malloc(npoints*nfeatures*sizeof(float), AOCL_ALIGNMENT);
	features    = (float**)_aligned_malloc(npoints*          sizeof(float*), AOCL_ALIGNMENT);
	features[0] = (float*) _aligned_malloc(npoints*nfeatures*sizeof(float), AOCL_ALIGNMENT);
    for (int i=1; i<npoints; i++)
        features[i] = features[i-1] + nfeatures;
    

	float temp;
	FILE *fp = fopen(filename, "r");
	for(int i = 0; i < npoints * nfeatures; i++){
		fscanf(fp, "%f", &temp);
		buf[i] = temp;
	}



	printf("\nI/O completed\n");
	printf("\nNumber of objects: %d\n", npoints);
	printf("Number of features: %d\n", nfeatures);	

	/* ============== I/O end ==============*/
	// error check for clusters
	if (npoints < nclusters)
	{
		printf("Error: nclusters(%d) > npoints(%d) -- cannot proceed\n", nclusters, npoints);
		exit(0);
	}

	memcpy(features[0], buf, npoints*nfeatures*sizeof(float)); /* now features holds 2-dimensional array of features */
	_aligned_free(buf);


	/* ======================= core of the clustering ===================*/

	cluster_centres = NULL;
    cluster(npoints,				/* number of data points */
			nfeatures,				/* number of features for each point */
			features,				/* array: [npoints][nfeatures] */
			nclusters,				/* range of min to max number of clusters */
			threshold,				/* loop termination factor */
			&cluster_centres,		/* return: [best_nclusters][nfeatures] */  
			nloops);				/* number of iteration for each number of clusters */		   


	/* =============== Command Line Output =============== */

	/* cluster center coordinates:displayed only for when k=1*/
	if(isOutput == 1) {
		printf("\n================= Centroid Coordinates =================\n");
		for(int i = 0; i < nclusters; i++){
			printf("%d:", i);
			for(int j = 0; j < nfeatures; j++){
				printf(" %.2f", cluster_centres[i][j]);
			}
			printf("\n\n");
		}
	}	

	

	/* free up memory */
	_aligned_free(features[0]);
	_aligned_free(features);    
    return(0);
}
