#include "support/common.h"
#include "support/ocl.h"
#include "support/timer.h"
#include "support/verify.h"

#include <unistd.h>
#include <thread>
#include <assert.h>
#include <atomic>

// Params ---------------------------------------------------------------------
struct Params {

    int   platform;
    int   device;
    int   n_work_items;
    int   n_work_groups;
    int   n_threads;
    int   n_warmup;
    int   n_reps;
    float alpha;
    int   in_size;
    int   n_bins;

    Params(int argc, char **argv) {
        platform      = 0;
        device        = 0;
        n_work_items  = 256;
        n_work_groups = 16;
        n_threads     = 32;
        n_warmup      = 5;
        n_reps        = 50;
        alpha         = 0;
        in_size       = 1536 * 1024 * 100;
        n_bins        = 256;

    }
};


void read_input(unsigned int *input, const Params &p) {

	srand(time(NULL));
	for(int i = 0; i < p.in_size; i++){
		input[i] = rand() % 4096;
	}
}


// Main ------------------------------------------------------------------------------------------
int main(int argc, char **argv) {

    const Params p(argc, argv);
    OpenCLSetup  ocl(p.platform, p.device);
    cl_int       clStatus;
    Timer        timer;

    // Allocate buffers
    timer.start("Allocation");

	int n_tasks = p.in_size / p.n_work_items;

    unsigned int *    h_in          = (unsigned int *)malloc(p.in_size * sizeof(unsigned int));
    std::atomic_uint *h_histo       = (std::atomic_uint *)malloc(p.n_bins * sizeof(std::atomic_uint));
    unsigned int *    h_histo_merge = (unsigned int *)malloc(p.n_bins * sizeof(unsigned int));
    cl_mem            d_in          = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR, p.in_size * sizeof(unsigned int), NULL, &clStatus);
    cl_mem d_histo = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE | CL_MEM_ALLOC_HOST_PTR, p.n_bins * sizeof(unsigned int), NULL, &clStatus);
    CL_ERR();
    ALLOC_ERR(h_in, h_histo, h_histo_merge);
    clFinish(ocl.clCommandQueue);

    timer.stop("Allocation");
    timer.print("Allocation", 1);


    // Initialize
    timer.start("Initialization");
    const int max_wi = ocl.max_work_items(ocl.clKernel);
    read_input(h_in, p);
    memset(h_histo, 0, p.n_bins * sizeof(unsigned int));
    clFinish(ocl.clCommandQueue);

    timer.stop("Initialization");
    timer.print("Initialization", 1);


    // Copy to device
    timer.start("Copy To Device");

    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_in, CL_TRUE, 0, p.in_size * sizeof(unsigned int), h_in, 0, NULL, NULL);
    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo, 0, NULL, NULL);
    clFinish(ocl.clCommandQueue);
    CL_ERR();

    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);


    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memset(h_histo, 0, p.n_bins * sizeof(unsigned int));
        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo, 0, NULL, NULL);
        clFinish(ocl.clCommandQueue);
        CL_ERR();

        if(rep >= p.n_warmup)
            timer.start("Kernel");
		
		
		// Launch FPGA threads
        clSetKernelArg(ocl.clKernel, 0, sizeof(int), &p.in_size);
        clSetKernelArg(ocl.clKernel, 1, sizeof(int), &p.n_bins);
        clSetKernelArg(ocl.clKernel, 2, sizeof(int), &n_tasks);
        clSetKernelArg(ocl.clKernel, 3, sizeof(float), &p.alpha);
        clSetKernelArg(ocl.clKernel, 4, sizeof(cl_mem), &d_in);
        clSetKernelArg(ocl.clKernel, 5, sizeof(cl_mem), &d_histo);
        clSetKernelArg(ocl.clKernel, 6, p.n_bins * sizeof(std::atomic_int), NULL);

        // Kernel launch
        size_t ls[1] = {(size_t)p.n_work_items};
        size_t gs[1] = {(size_t)p.n_work_groups * p.n_work_items};
        clStatus = clEnqueueNDRangeKernel(ocl.clCommandQueue, ocl.clKernel, 1, NULL, gs, ls, 0, NULL, NULL);
        CL_ERR();
        clFinish(ocl.clCommandQueue);

        if(rep >= p.n_warmup)
            timer.stop("Kernel");
    }
    timer.print("Kernel", p.n_reps);


    // Copy back
    timer.start("Copy Back and Merge");

	for(unsigned int i = 0; i < p.n_bins; ++i) 
		h_histo_merge[i] = 0;

	if(p.alpha != 1) {

    clStatus = clEnqueueReadBuffer(
        ocl.clCommandQueue, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo_merge, 0, NULL, NULL);
    CL_ERR();
    clFinish(ocl.clCommandQueue);

	}
    for(unsigned int i = 0; i < p.n_bins; ++i) {
        h_histo_merge[i] += (unsigned int)h_histo[i];

	}
    timer.stop("Copy Back and Merge");
    timer.print("Copy Back and Merge", 1);


    // Verify answer
    verify((unsigned int *)h_histo_merge, h_in, p.in_size, p.n_bins);


    // Free memory
    timer.start("Deallocation");
    free(h_in);
    free(h_histo);
    free(h_histo_merge);
    clStatus = clReleaseMemObject(d_in);
    clStatus = clReleaseMemObject(d_histo);
    CL_ERR();
    ocl.release();
    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    printf("Test Passed\n");
    return 0;
}
