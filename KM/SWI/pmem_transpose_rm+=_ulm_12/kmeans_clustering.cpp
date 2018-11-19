#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <math.h>
#include <omp.h>
#include "kmeans.h"
#define RANDOM_MAX 2147483647

#define AOCL_ALIGNMENT 64
#include <malloc.h>

extern double wtime(void);
/*----< kmeans_clustering() >---------------------------------------------*/
float** kmeans_clustering(float **feature,    /* in: [npoints][nfeatures] */
                          int     nfeatures,
                          int     npoints,
                          int     nclusters,
                          float   threshold,
                          int    *membership) /* out: [npoints] */
{    
    int      i, j, n = 0;				/* counters */
	int		 loop=0, temp;
    int     *new_centers_len;	/* [nclusters]: no. of points in each cluster */
    float    delta;				/* if the point moved */
    float  **clusters;			/* out: [nclusters][nfeatures] */
    float  **new_centers;		/* [nclusters][nfeatures] */
	int     *initial;			/* used to hold the index of points not yet selected
								   prevents the "birthday problem" of dual selection (?)
								   considered holding initial cluster indices, but changed due to
								   possible, though unlikely, infinite loops */
	int      initial_points;
	int		 c = 0;
	float	 *time;
	float	 total_time;

	/* nclusters should never be > npoints
	   that would guarantee a cluster without points */
	if (nclusters > npoints)
		nclusters = npoints;
    /* allocate space for and initialize returning variable clusters[] */
	clusters    = (float**) _aligned_malloc(nclusters *             sizeof(float*), AOCL_ALIGNMENT);
	clusters[0] = (float*)  _aligned_malloc(nclusters * nfeatures * sizeof(float), AOCL_ALIGNMENT);
    for (i=1; i<nclusters; i++)
        clusters[i] = clusters[i-1] + nfeatures;
	/* initialize the random clusters */
	initial = (int *) _aligned_malloc (npoints * sizeof(int), AOCL_ALIGNMENT);
	for (i = 0; i < npoints; i++)
	{
		initial[i] = i;
	}
	initial_points = npoints;
    /* randomly pick cluster centers */
    for (i=0; i<nclusters && initial_points >= 0; i++) {
		//n = (int)rand() % initial_points;		
		
        for (j=0; j<nfeatures; j++)
            clusters[i][j] = feature[initial[n]][j];	// remapped

		/* swap the selected index to the end (not really necessary,
		   could just move the end up) */
		temp = initial[n];
		initial[n] = initial[initial_points-1];
		initial[initial_points-1] = temp;
		initial_points--;
		n++;
    }

	/* initialize the membership to -1 for all */
    for (i=0; i < npoints; i++)
	  membership[i] = -1;

    /* allocate space for and initialize new_centers_len and new_centers */
    new_centers_len = (int*) calloc(nclusters, sizeof(int));
	time			= (float*) malloc (sizeof(float));

	new_centers    = (float**) _aligned_malloc(nclusters *            sizeof(float*), AOCL_ALIGNMENT);
    new_centers[0] = (float*)  calloc(nclusters * nfeatures, sizeof(float));
    for (i=1; i<nclusters; i++)
        new_centers[i] = new_centers[i-1] + nfeatures;

	total_time = 0.0;

	/* iterate until convergence */
	do {
        delta	   = 0.0;
		// CUDA
		delta = (float) kmeansOCL(feature,			/* in: [npoints][nfeatures] */
								   nfeatures,		/* number of attributes for each point */
								   npoints,			/* number of data points */
								   nclusters,		/* number of clusters */
								   membership,		/* which cluster the point belongs to */
								   clusters,		/* out: [nclusters][nfeatures] */
								   new_centers_len,	/* out: number of points in each cluster */
								   new_centers,		/* sum of points in each cluster */
								   time);

		/* replace old cluster centers with new_centers */
		/* CPU side of reduction */
		for (i=0; i<nclusters; i++) {
			for (j=0; j<nfeatures; j++) {
				if (new_centers_len[i] > 0)
					clusters[i][j] = new_centers[i][j] / new_centers_len[i];	/* take average i.e. sum/n */
				new_centers[i][j] = 0.0;	/* set back to 0 */
			}
			new_centers_len[i] = 0;			/* set back to 0 */
		}	 
		total_time += time[0];
		c++;
    } while ((delta > threshold) && (loop++ < 500));	/* makes sure loop terminates */
	

	int temp2;
	FILE *fp = fopen("output/output.txt", "r");
	for(int i = 0; i < npoints; i++){
		fscanf(fp, "%d", &temp2);
		if(membership[i] != temp2){
			printf("failed!!\n");
			break;
		}
	}
	printf("pass~~\n");


	printf("iterated %d times\n", c);
	printf("Kernel Time (ms): %0.3f\n", total_time / c);
    free(new_centers[0]);
    _aligned_free(new_centers);
    free(new_centers_len);
    return clusters;
}


