#include "support/common.h"
#include "support/ocl.h"
#include "support/timer.h"
#include "support/verify.h"

#include <unistd.h>
#include <thread>
#include <assert.h>
#include <atomic>

#define AOCL_ALIGNMENT 64
#include <malloc.h>

// Params ---------------------------------------------------------------------
struct Params {

    int   platform;
    int   device;
    int   n_work_items;
    int   n_work_groups;
    int   n_threads;
    int   n_warmup;
    int   n_reps;
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

	unsigned int n_tasks = p.in_size / p.n_work_items;


	unsigned int *    h_in          = (unsigned int *)_aligned_malloc(p.in_size * sizeof(unsigned int),AOCL_ALIGNMENT);
	std::atomic_uint *h_histo       = (std::atomic_uint *)_aligned_malloc(p.n_bins * sizeof(std::atomic_uint),AOCL_ALIGNMENT);
	unsigned int *    h_histo_merge = (unsigned int *)_aligned_malloc(p.n_bins * sizeof(unsigned int),AOCL_ALIGNMENT);
    cl_mem            d_in          = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, p.in_size * sizeof(unsigned int), NULL, &clStatus);
    cl_mem d_histo = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, p.n_bins * sizeof(unsigned int), NULL, &clStatus);
    CL_ERR();
    ALLOC_ERR(h_in, h_histo, h_histo_merge);
    //clFinish(ocl.clCommandQueue);
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize
    timer.start("Initialization");
	const int max_wi = ocl.max_work_items(ocl.clKernel_in);
    read_input(h_in, p);

    memset(h_histo, 0, p.n_bins * sizeof(unsigned int));
    //clFinish(ocl.clCommandQueue);
    timer.stop("Initialization");
    timer.print("Initialization", 1);


    // Copy to device
    timer.start("Copy To Device");


    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue_in, d_in, CL_TRUE, 0, p.in_size * sizeof(unsigned int), h_in, 0, NULL, NULL);
	clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue_0, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo, 0, NULL, NULL);	
    clFinish(ocl.clCommandQueue_in);
	clFinish(ocl.clCommandQueue_0);
    CL_ERR();

    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);





    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memset(h_histo, 0, p.n_bins * sizeof(unsigned int));

        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue_0, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo, 0, NULL, NULL);		
		clFinish(ocl.clCommandQueue_0);
        CL_ERR();



        if(rep >= p.n_warmup)
            timer.start("Kernel");
   
		
		
		// Launch FPGA threads
        clSetKernelArg(ocl.clKernel_in, 0, sizeof(unsigned int), &n_tasks);
        clSetKernelArg(ocl.clKernel_in, 1, sizeof(cl_mem), &d_in);

        size_t ls[1] = {(size_t)p.n_work_items};
        size_t gs[1] = {(size_t)p.n_work_groups * p.n_work_items};
        if(p.n_work_groups > 0) {
            assert(ls[0] <= max_wi && 
                "The work-group size is greater than the maximum work-group size that can be used to execute this kernel");
            clStatus = clEnqueueNDRangeKernel(ocl.clCommandQueue_in, ocl.clKernel_in, 1, NULL, gs, ls, 0, NULL, NULL);
            CL_ERR();
        }


		
		clSetKernelArg(ocl.clKernel_0, 0, sizeof(unsigned int), &p.n_bins);
        clSetKernelArg(ocl.clKernel_0, 1, sizeof(int), &n_tasks);
		clSetKernelArg(ocl.clKernel_0, 2, sizeof(cl_mem), &d_histo);
		clSetKernelArg(ocl.clKernel_0, 3, p.n_bins * sizeof(std::atomic_int), NULL);
        if(p.n_work_groups > 0) {
            assert(ls[0] <= max_wi && 
                "The work-group size is greater than the maximum work-group size that can be used to execute this kernel");
            clStatus = clEnqueueNDRangeKernel(ocl.clCommandQueue_0, ocl.clKernel_0, 1, NULL, gs, ls, 0, NULL, NULL);
            CL_ERR();
        }
		
		clSetKernelArg(ocl.clKernel_1, 0, sizeof(unsigned int), &p.n_bins);
        clSetKernelArg(ocl.clKernel_1, 1, sizeof(int), &n_tasks);
		clSetKernelArg(ocl.clKernel_1, 2, sizeof(cl_mem), &d_histo);
		clSetKernelArg(ocl.clKernel_1, 3, p.n_bins * sizeof(std::atomic_int), NULL);
        if(p.n_work_groups > 0) {
            assert(ls[0] <= max_wi && 
                "The work-group size is greater than the maximum work-group size that can be used to execute this kernel");
            clStatus = clEnqueueNDRangeKernel(ocl.clCommandQueue_1, ocl.clKernel_1, 1, NULL, gs, ls, 0, NULL, NULL);
            CL_ERR();
        }

		clFinish(ocl.clCommandQueue_in);
		clFinish(ocl.clCommandQueue_0);
		clFinish(ocl.clCommandQueue_1);

        if(rep >= p.n_warmup)
            timer.stop("Kernel");
    }
    timer.print("Kernel", p.n_reps);


    // Copy back
    timer.start("Copy Back and Merge");

	for(unsigned int i = 0; i < p.n_bins; ++i) 
		h_histo_merge[i] = 0;

	
    clStatus = clEnqueueReadBuffer(
        ocl.clCommandQueue_0, d_histo, CL_TRUE, 0, p.n_bins * sizeof(unsigned int), h_histo_merge, 0, NULL, NULL);
    CL_ERR();
    clFinish(ocl.clCommandQueue_0);


    for(unsigned int i = 0; i < p.n_bins; ++i) {
        h_histo_merge[i] += (unsigned int)h_histo[i];
	}

    timer.stop("Copy Back and Merge");
    timer.print("Copy Back and Merge", 1);

    // Verify answer
    verify((unsigned int *)h_histo_merge, h_in, p.in_size, p.n_bins);

    // Free memory
    timer.start("Deallocation");
    _aligned_free(h_in);
    _aligned_free(h_histo);
    _aligned_free(h_histo_merge);
    clStatus = clReleaseMemObject(d_in);
    clStatus = clReleaseMemObject(d_histo);
    CL_ERR();
    ocl.release();
    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    printf("Test Passed\n");
    return 0;
}
