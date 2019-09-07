#include "support/common.h"
#include "support/ocl.h"
#include "support/timer.h"
#include "support/verify.h"

#include <string.h>
#include <unistd.h>
#include <thread>
#include <assert.h>
#include <atomic>

#define AOCL_ALIGNMENT 64
#include <malloc.h>


// Params ---------------------------------------------------------------------
struct Params {

    int         platform;
    int         device;
    int         n_warmup;
    int         n_reps;
    const char *file_name;
    int         max_iter;
    int         error_threshold;
    float       convergence_threshold;

    Params(int argc, char **argv) {
        platform              = 0;
        device                = 0;
        n_warmup              = 5;
        n_reps                = 50;
        file_name             = "input/vectors.csv";
        max_iter              = 2000;
        error_threshold       = 3;
        convergence_threshold = 1;
    }
};

// Input ----------------------------------------------------------------------
int read_input_size(const Params &p) {
    FILE *File = NULL;
    File       = fopen(p.file_name, "r");
    if(File == NULL) {
        puts("Error al abrir el fichero");
        exit(-1);
    }

    int n;
    fscanf(File, "%d", &n);

    fclose(File);

    return n;
}

void read_input(flowvector *v, int *r, const Params &p) {

    int ic = 0;

    // Open input file
    FILE *File = NULL;
    File       = fopen(p.file_name, "r");
    if(File == NULL) {
        puts("Error opening file!");
        exit(-1);
    }

    int n;
    fscanf(File, "%d", &n);

    while(fscanf(File, "%d,%d,%d,%d", &v[ic].x, &v[ic].y, &v[ic].vx, &v[ic].vy) == 4) {
        ic++;
        if(ic > n) {
            puts("Error: inconsistent file data!");
            exit(-1);
        }
    }
    if(ic < n) {
        puts("Error: inconsistent file data!");
        exit(-1);
    }

    srand(time(NULL));
    for(int i = 0; i < 2 * p.max_iter; i++) {
        r[i] = ((int)rand()) % n;
    }
}

// Main ------------------------------------------------------------------------------------------
int main(int argc, char **argv) {

    const Params p(argc, argv);
    OpenCLSetup  ocl(p.platform, p.device);
    Timer        timer;
    cl_int       clStatus;

    // Allocate
    timer.start("Allocation");
    int n_flow_vectors = read_input_size(p);
    int best_model     = -1;
    int best_outliers  = n_flow_vectors;

	flowvector *     h_flow_vector_array  = (flowvector *)_aligned_malloc(n_flow_vectors * sizeof(flowvector),AOCL_ALIGNMENT);
	int *            h_random_numbers     = (int *)_aligned_malloc(2 * p.max_iter * sizeof(int),AOCL_ALIGNMENT);
	int *            h_model_candidate    = (int *)_aligned_malloc(p.max_iter * sizeof(int),AOCL_ALIGNMENT);
	int *            h_outliers_candidate = (int *)_aligned_malloc(p.max_iter * sizeof(int),AOCL_ALIGNMENT);
	std::atomic_int *h_g_out_id           = (std::atomic_int *)_aligned_malloc(sizeof(std::atomic_int),AOCL_ALIGNMENT);

    cl_mem           d_flow_vector_array  = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, n_flow_vectors * sizeof(flowvector), NULL, &clStatus);
    cl_mem d_random_numbers = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, 2 * p.max_iter * sizeof(int), NULL, &clStatus);
    cl_mem d_model_candidate = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, p.max_iter * sizeof(int), NULL, &clStatus);
    cl_mem d_outliers_candidate = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, p.max_iter * sizeof(int), NULL, &clStatus);
    cl_mem d_g_out_id =
		clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, sizeof(int), NULL, &clStatus);
    CL_ERR();

    ALLOC_ERR(h_flow_vector_array, h_random_numbers, h_model_candidate, h_outliers_candidate, h_g_out_id);
    clFinish(ocl.clCommandQueue);
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize
    timer.start("Initialization");
    const int max_wi = ocl.max_work_items(ocl.clKernel);
    read_input(h_flow_vector_array, h_random_numbers, p);
    clFinish(ocl.clCommandQueue);
    timer.stop("Initialization");
    timer.print("Initialization", 1);

    // Copy to device
    timer.start("Copy To Device");

	clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_flow_vector_array, CL_TRUE, 0,
		n_flow_vectors * sizeof(flowvector), h_flow_vector_array, 0, NULL, NULL);
	clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_random_numbers, CL_TRUE, 0, 2 * p.max_iter * sizeof(int),
		h_random_numbers, 0, NULL, NULL);
	clStatus = clEnqueueWriteBuffer(
		ocl.clCommandQueue, d_model_candidate, CL_TRUE, 0, p.max_iter * sizeof(int), h_model_candidate, 0, NULL, NULL);
	clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_outliers_candidate, CL_TRUE, 0, p.max_iter * sizeof(int),
		h_outliers_candidate, 0, NULL, NULL);
	clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_g_out_id, CL_TRUE, 0, sizeof(int), h_g_out_id, 0, NULL, NULL);
	clFinish(ocl.clCommandQueue);
	CL_ERR();

    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);


    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memset((void *)h_model_candidate, 0, p.max_iter * sizeof(int));
        memset((void *)h_outliers_candidate, 0, p.max_iter * sizeof(int));

        h_g_out_id[0] = 0;

        clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_model_candidate, CL_TRUE, 0, p.max_iter * sizeof(int),
            h_model_candidate, 0, NULL, NULL);
        clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue, d_outliers_candidate, CL_TRUE, 0, p.max_iter * sizeof(int),
            h_outliers_candidate, 0, NULL, NULL);
        clStatus =
            clEnqueueWriteBuffer(ocl.clCommandQueue, d_g_out_id, CL_TRUE, 0, sizeof(int), h_g_out_id, 0, NULL, NULL);
        CL_ERR();

        clFinish(ocl.clCommandQueue);

		
		if(rep >= p.n_warmup)
			timer.start("Kernel-FPGA");

		clSetKernelArg(ocl.clKernel_model, 0, sizeof(cl_mem), &d_flow_vector_array);
		clSetKernelArg(ocl.clKernel_model, 1, sizeof(cl_mem), &d_random_numbers);

		size_t ls[1] = {(size_t)1};
		size_t gs[1] = {(size_t)p.max_iter};
		clStatus     = clEnqueueNDRangeKernel(ocl.clCommandQueue_model, ocl.clKernel_model, 1, NULL, gs, ls, 0, NULL, NULL);
		CL_ERR();
		
		clSetKernelArg(ocl.clKernel, 0, sizeof(int), &n_flow_vectors);
		clSetKernelArg(ocl.clKernel, 1, sizeof(int), &p.error_threshold);
		clSetKernelArg(ocl.clKernel, 2, sizeof(float), &p.convergence_threshold);
		clSetKernelArg(ocl.clKernel, 3, sizeof(cl_mem), &d_flow_vector_array);
		clSetKernelArg(ocl.clKernel, 4, sizeof(cl_mem), &d_model_candidate);
		clSetKernelArg(ocl.clKernel, 5, sizeof(cl_mem), &d_outliers_candidate);
		clSetKernelArg(ocl.clKernel, 6, sizeof(cl_mem), &d_g_out_id);		

		clStatus     = clEnqueueNDRangeKernel(ocl.clCommandQueue, ocl.clKernel, 1, NULL, gs, ls, 0, NULL, NULL);
		CL_ERR();

		clFinish(ocl.clCommandQueue_model);
		clFinish(ocl.clCommandQueue);

		if(rep >= p.n_warmup)
			timer.stop("Kernel-FPGA");
		

        // Copy back
        if(rep >= p.n_warmup)
            timer.start("Copy Back and Merge");
        
		int d_candidates = 0;
        clStatus = clEnqueueReadBuffer(
            ocl.clCommandQueue, d_g_out_id, CL_TRUE, 0, sizeof(int), &d_candidates, 0, NULL, NULL);
        clStatus = clEnqueueReadBuffer(ocl.clCommandQueue, d_model_candidate, CL_TRUE, 0,
            d_candidates * sizeof(int), &h_model_candidate[h_g_out_id[0]], 0, NULL, NULL);
        clStatus = clEnqueueReadBuffer(ocl.clCommandQueue, d_outliers_candidate, CL_TRUE, 0,
            d_candidates * sizeof(int), &h_outliers_candidate[h_g_out_id[0]], 0, NULL, NULL);
        CL_ERR();

        h_g_out_id[0] += d_candidates;
        clFinish(ocl.clCommandQueue);
        if(rep >= p.n_warmup)
            timer.stop("Copy Back and Merge");

        // Post-processing (chooses the best model among the candidates)
        if(rep >= p.n_warmup) 
			timer.start("Kernel-CPU");

        for(int i = 0; i < h_g_out_id[0]; i++) {
            if(h_outliers_candidate[i] < best_outliers) {
                best_outliers = h_outliers_candidate[i];
                best_model    = h_model_candidate[i];
            }
        }
        if(rep >= p.n_warmup) 
            timer.stop("Kernel-CPU");

    }

	timer.print("Kernel-FPGA", p.n_reps);
	timer.print("Kernel-CPU", p.n_reps);
    timer.print("Copy Back and Merge", p.n_reps);


    // Verify answer
    verify(h_flow_vector_array, n_flow_vectors, h_random_numbers, p.max_iter, p.error_threshold,
        p.convergence_threshold, h_g_out_id[0], best_outliers);


    // Free memory
    timer.start("Deallocation");

    _aligned_free(h_model_candidate);
    _aligned_free(h_outliers_candidate);
    _aligned_free(h_g_out_id);
    _aligned_free(h_flow_vector_array);
    _aligned_free(h_random_numbers);
    clStatus = clReleaseMemObject(d_model_candidate);
    clStatus = clReleaseMemObject(d_outliers_candidate);
    clStatus = clReleaseMemObject(d_g_out_id);
    clStatus = clReleaseMemObject(d_flow_vector_array);
    clStatus = clReleaseMemObject(d_random_numbers);
    CL_ERR();

    ocl.release();

    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    return 0;
}
