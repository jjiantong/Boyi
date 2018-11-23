#ifndef _H_FUZZY_KMEANS
#define _H_FUZZY_KMEANS

#ifndef FLT_MAX
#define FLT_MAX 3.40282347e+38
#endif

/* rmse.c */
float   euclid_dist_2        (float*, float*, int);
int     find_nearest_point   (float* , int, float**, int);
float	rms_err(float**, int, int, float**, int);
void    cluster(int, int, float**, int, float, float***, int);
int setup(int argc, char** argv);
int allocate(int npoints, int nfeatures, int nclusters, float **feature);
void deallocateMemory();
int	kmeansOCL(float **feature, int nfeatures, int npoints, int nclusters, int *membership, float **clusters, int *new_centers_len, float  **new_centers, float* time);
float** kmeans_clustering(float **feature, int nfeatures, int npoints, int nclusters, float threshold, int *membership); 

#endif

