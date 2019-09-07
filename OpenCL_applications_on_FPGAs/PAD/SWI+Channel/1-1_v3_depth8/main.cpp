#include "support/common.h"
#include "support/ocl.h"
#include "support/timer.h"
#include "support/verify.h"

#include <string.h>
#include <unistd.h>
#include <thread>
#include <assert.h>

#define AOCL_ALIGNMENT 64
#include <malloc.h>

// Params ---------------------------------------------------------------------
struct Params {

    int   platform;
    int   device;
    int   n_warmup;
    int   n_reps;
    int   m;
    int   n;
    int   pad;

    Params(int argc, char **argv) {
        platform      = 0;
        device        = 0;
        n_warmup      = 5;
        n_reps        = 50;
        m             = 200;
        n             = 199;
        pad           = 1;
	}
};

// Input Data -----------------------------------------------------------------
void read_input(Taa *input, const Params &p) {

    // Initialize the host input vectors
    srand(time(NULL));
    for(int i = 0; i < p.m; i++) {
        for(int j = 0; j < p.n; j++) {
            input[i * p.n + j] = (Taa)rand() / RAND_MAX;
        }
    }
    for(int i = p.n * p.m; i < (p.n + p.pad) * p.m; i++) {
        input[i] = 0.0f;
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
    const int in_size     = p.m * (p.n + p.pad);
	Taa *    h_in_out = (Taa *)_aligned_malloc(in_size * sizeof(Taa),AOCL_ALIGNMENT);
    cl_mem d_in_out = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, in_size * sizeof(Taa), NULL, &clStatus);
    CL_ERR();
	Taa *h_in_backup = (Taa *)_aligned_malloc(in_size * sizeof(Taa),AOCL_ALIGNMENT);
    //clFinish(ocl.clCommandQueue);
    ALLOC_ERR(h_in_out, h_in_backup);
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize
    timer.start("Initialization");
    read_input(h_in_out, p);

    timer.stop("Initialization");
    timer.print("Initialization", 1);
    memcpy(h_in_backup, h_in_out, in_size * sizeof(Taa)); // Backup for reuse across iterations

#ifndef OCL_2_0
    // Copy to device
    timer.start("Copy To Device");


    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue_in, d_in_out, CL_TRUE, 0, in_size * sizeof(Taa), h_in_out, 0, NULL, 
        NULL);
	CL_ERR();
    clFinish(ocl.clCommandQueue_in);
    


    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);
#endif

    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memcpy(h_in_out, h_in_backup, in_size * sizeof(Taa));

        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue_in, d_in_out, CL_TRUE, 0, in_size * sizeof(Taa), h_in_out, 0, 
            NULL, NULL);
        CL_ERR();
        clFinish(ocl.clCommandQueue_in);

        if(rep >= p.n_warmup)
            timer.start("Kernel");

        clSetKernelArg(ocl.clKernel_in, 0, sizeof(int), &p.n);
        clSetKernelArg(ocl.clKernel_in, 1, sizeof(int), &p.m);
        clSetKernelArg(ocl.clKernel_in, 2, sizeof(cl_mem), &d_in_out);
        clStatus = clEnqueueTask(ocl.clCommandQueue_in, ocl.clKernel_in, 0, NULL, NULL);
        CL_ERR();


        clSetKernelArg(ocl.clKernel_0, 0, sizeof(int), &p.n);
        clSetKernelArg(ocl.clKernel_0, 1, sizeof(int), &p.m);
        clSetKernelArg(ocl.clKernel_0, 2, sizeof(int), &p.pad);
		clSetKernelArg(ocl.clKernel_0, 3, sizeof(cl_mem), &d_in_out);
        clStatus = clEnqueueTask(ocl.clCommandQueue_0, ocl.clKernel_0, 0, NULL, NULL);
        CL_ERR();

		clFinish(ocl.clCommandQueue_in);
		clFinish(ocl.clCommandQueue_0);

        if(rep >= p.n_warmup)
            timer.stop("Kernel");
    }
	
    timer.print("Kernel", p.n_reps);

#ifndef OCL_2_0
    // Copy back
    timer.start("Copy Back and Merge");
    clStatus = clEnqueueReadBuffer(ocl.clCommandQueue_0, d_in_out, CL_TRUE, 0,
        in_size * sizeof(Taa), h_in_out, 0, NULL, NULL);
    CL_ERR();
    clFinish(ocl.clCommandQueue_0);
    timer.stop("Copy Back and Merge");
    timer.print("Copy Back and Merge", 1);
#endif

    // Verify answer
    verify(h_in_out, h_in_backup, p.n, p.m, p.n + p.pad);

    // Free memory
    timer.start("Deallocation");

    _aligned_free(h_in_out);
    clStatus = clReleaseMemObject(d_in_out);
    CL_ERR();

    _aligned_free(h_in_backup);
    ocl.release();
    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    printf("Test Passed\n");
    return 0;

}