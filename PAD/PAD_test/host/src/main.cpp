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
    int   m;
    int   n;
    int   pad;

    Params(int argc, char **argv) {
        platform      = 0;
        device        = 0;
        n_work_items  = 64;
        n_work_groups = 32;
        n_threads     = 2;
        n_warmup      = 5;
        n_reps        = 50;
        alpha         = 0;
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
    const int n_tasks     = divceil(in_size, p.n_work_items * REGS);
    const int n_flags     = n_tasks + 1;

	Taa *    h_in_out = (Taa *)_aligned_malloc(in_size * sizeof(Taa),AOCL_ALIGNMENT);
    cl_mem d_in_out = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, n_tasks * p.n_work_items * REGS * sizeof(Taa), NULL, &clStatus);
	std::atomic_int *h_flags = (std::atomic_int *)_aligned_malloc(n_flags * sizeof(std::atomic_int),AOCL_ALIGNMENT);
    cl_mem           d_flags = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, n_flags * sizeof(int), NULL, &clStatus);
    CL_ERR();

	Taa *h_in_backup = (Taa *)_aligned_malloc(in_size * sizeof(Taa),AOCL_ALIGNMENT);
    clFinish(ocl.clCommandQueue);
    ALLOC_ERR(h_in_out, h_flags, h_in_backup);
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize
    timer.start("Initialization");
    const int max_wi = ocl.max_work_items(ocl.clKernel);
    read_input(h_in_out, p);
    memset(h_flags, 0, n_flags * sizeof(atomic_int));

    h_flags[0]           = 1;

    timer.stop("Initialization");
    timer.print("Initialization", 1);
    memcpy(h_in_backup, h_in_out, in_size * sizeof(Taa)); // Backup for reuse across iterations

    // Copy to device
    timer.start("Copy To Device");

    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_in_out, CL_TRUE, 0, n_tasks * p.n_work_items * REGS * sizeof(Taa), h_in_out, 0, NULL, 
        NULL);
    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_flags, CL_TRUE, 0, n_flags * sizeof(int), h_flags, 0, NULL, NULL);
    clFinish(ocl.clCommandQueue);
    CL_ERR();


    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);

    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memcpy(h_in_out, h_in_backup, in_size * sizeof(Taa));
        memset(h_flags, 0, n_flags * sizeof(atomic_int));

        h_flags[0]           = 1;


        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue, d_in_out, CL_TRUE, 0, n_tasks * p.n_work_items * REGS * sizeof(Taa), h_in_out, 0, 
            NULL, NULL);
        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue, d_flags, CL_TRUE, 0, n_flags * sizeof(int), h_flags, 0, NULL, NULL);
        CL_ERR();
        clFinish(ocl.clCommandQueue);


        if(rep >= p.n_warmup)
            timer.start("Kernel");


        clSetKernelArg(ocl.clKernel, 0, sizeof(int), &p.n);
        clSetKernelArg(ocl.clKernel, 1, sizeof(int), &p.m);
        clSetKernelArg(ocl.clKernel, 2, sizeof(int), &p.pad);
        clSetKernelArg(ocl.clKernel, 3, sizeof(int), &n_tasks);
        clSetKernelArg(ocl.clKernel, 4, sizeof(float), &p.alpha);
        clSetKernelArg(ocl.clKernel, 5, sizeof(cl_mem), &d_in_out);
        clSetKernelArg(ocl.clKernel, 6, sizeof(cl_mem), &d_in_out);
        clSetKernelArg(ocl.clKernel, 7, sizeof(cl_mem), &d_flags);

        // Kernel launch
        size_t ls[1] = {(size_t)p.n_work_items};
        size_t gs[1] = {(size_t)p.n_work_items * p.n_work_groups};
        if(gs[0] > 0) {
            assert(ls[0] <= max_wi && 
                "The work-group size is greater than the maximum work-group size that can be used to execute this kernel");
            clStatus = clEnqueueNDRangeKernel(ocl.clCommandQueue, ocl.clKernel, 1, NULL, gs, ls, 0, NULL, NULL);
            CL_ERR();
        }

        clFinish(ocl.clCommandQueue);

        if(rep >= p.n_warmup)
            timer.stop("Kernel");
    }
    timer.print("Kernel", p.n_reps);


    // Copy back
    timer.start("Copy Back and Merge");

    clStatus = clEnqueueReadBuffer(ocl.clCommandQueue, d_in_out, CL_TRUE, 0,
        (n_tasks * p.n_work_items * REGS > in_size) ? in_size * sizeof(Taa) : 
        n_tasks * p.n_work_items * REGS * sizeof(Taa), h_in_out, 0, NULL, NULL);
    CL_ERR();

    clFinish(ocl.clCommandQueue);
    timer.stop("Copy Back and Merge");
    timer.print("Copy Back and Merge", 1);


    // Verify answer
    verify(h_in_out, h_in_backup, p.n, p.m, p.n + p.pad);

    // Free memory
    timer.start("Deallocation");
    _aligned_free(h_in_out);
    _aligned_free(h_flags);
    clStatus = clReleaseMemObject(d_in_out);
    clStatus = clReleaseMemObject(d_flags);
    CL_ERR();
    _aligned_free(h_in_backup);
    ocl.release();
    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    printf("Test Passed\n");
    return 0;
}
