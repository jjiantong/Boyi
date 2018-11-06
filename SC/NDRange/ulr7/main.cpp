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

    int   platform;
    int   device;
    int   n_work_items;
    int   n_work_groups;
    int   n_threads;
    int   n_warmup;
    int   n_reps;
    float alpha;
    int   in_size;
    int   compaction_factor;
    int   remove_value;

    Params(int argc, char **argv) {
        platform          = 0;
        device            = 0;
        n_work_items      = 128;
        n_work_groups     = 16;
        n_threads         = 2;
        n_warmup          = 5;
        n_reps            = 50;
        alpha             = 0;
//		in_size           = 1048576;
        in_size           = 65536;
        compaction_factor = 50;
        remove_value      = 0;
    }
};

// Input Data -----------------------------------------------------------------
void read_input(int *input, const Params &p) {   

    // Initialize the host input vectors
    srand(time(NULL));
    for(int i = 0; i < p.in_size; i++) {
        input[i] = (int)p.remove_value;
    }
    int M = (p.in_size * p.compaction_factor) / 100;
    int m = M;
//	printf("%d.......",m);
    while(m > 0) {
//		printf("%d.......",m);
		int x = (int)(rand() % p.in_size);    
        if(input[x] == p.remove_value) {
            input[x] = (int)(x + 2);
            m--;
        }
    }
}


// Main ------------------------------------------------------------------------------------------
int main(int argc, char **argv) {

    const Params p(argc, argv);
    OpenCLSetup  ocl(p.platform, p.device);
    Timer        timer;
    cl_int       clStatus;

    // Allocate buffers
    timer.start("Allocation");
    const int n_tasks     = divceil(p.in_size, p.n_work_items * REGS);
    const int n_flags     = n_tasks + 1;

	int *    h_in_out = (int *)_aligned_malloc(n_tasks * p.n_work_items * REGS * sizeof(int),AOCL_ALIGNMENT);
    cl_mem d_in_out = clCreateBuffer(
        ocl.clContext, CL_MEM_READ_WRITE, n_tasks * p.n_work_items * REGS * sizeof(int), NULL, &clStatus);
	std::atomic_int *h_flags = (std::atomic_int *)_aligned_malloc(n_flags * sizeof(std::atomic_int),AOCL_ALIGNMENT);
    cl_mem           d_flags = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, n_flags * sizeof(int), NULL, &clStatus);
    CL_ERR();

	int *h_in_backup = (int *)_aligned_malloc(p.in_size * sizeof(int),AOCL_ALIGNMENT);
    ALLOC_ERR(h_in_out, h_flags, h_in_backup);
    clFinish(ocl.clCommandQueue);
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize
    timer.start("Initialization");
    const int max_wi = ocl.max_work_items(ocl.clKernel);
    	printf("0");
	read_input(h_in_out, p);

    h_flags[0]           = 1;

    timer.stop("Initialization");
    timer.print("Initialization", 1);
    memcpy(h_in_backup, h_in_out, p.in_size * sizeof(int)); // Backup for reuse across iterations

    // Copy to device
    timer.start("Copy To Device");

    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_in_out, CL_TRUE, 0, n_tasks * p.n_work_items * REGS * sizeof(int),
        h_in_out, 0, NULL, NULL);
    clStatus = clEnqueueWriteBuffer(
        ocl.clCommandQueue, d_flags, CL_TRUE, 0, n_flags * sizeof(int), h_flags, 0, NULL, NULL);
    CL_ERR();

    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);

    // Loop over main kernel
    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

        // Reset
        memcpy(h_in_out, h_in_backup, p.in_size * sizeof(int));
        memset(h_flags, 0, n_flags * sizeof(atomic_int));

        h_flags[0]           = 1;


        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue, d_in_out, CL_TRUE, 0, n_tasks * p.n_work_items * REGS * sizeof(int),
            h_in_out, 0, NULL, NULL);
        clStatus = clEnqueueWriteBuffer(
            ocl.clCommandQueue, d_flags, CL_TRUE, 0, n_flags * sizeof(int), h_flags, 0, NULL, NULL);
        CL_ERR();
        clFinish(ocl.clCommandQueue);


        if(rep >= p.n_warmup)
            timer.start("Kernel");


        clSetKernelArg(ocl.clKernel, 0, sizeof(int), &p.in_size);
        clSetKernelArg(ocl.clKernel, 1, sizeof(int), &p.remove_value);
        clSetKernelArg(ocl.clKernel, 2, p.n_work_items * sizeof(int), NULL);
        clSetKernelArg(ocl.clKernel, 3, sizeof(int), NULL);
        clSetKernelArg(ocl.clKernel, 4, sizeof(int), &n_tasks);
        clSetKernelArg(ocl.clKernel, 5, sizeof(float), &p.alpha);
        clSetKernelArg(ocl.clKernel, 6, sizeof(cl_mem), &d_in_out);
        clSetKernelArg(ocl.clKernel, 7, sizeof(cl_mem), &d_in_out);
        clSetKernelArg(ocl.clKernel, 8, sizeof(cl_mem), &d_flags);

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
    int offset = 0 == 0 ? 1 : 2;
    clStatus   = clEnqueueReadBuffer(ocl.clCommandQueue, d_in_out, CL_TRUE, 0,
        n_tasks * p.n_work_items * REGS * sizeof(int), h_in_out + h_flags[0] - offset, 0, NULL, NULL);
    CL_ERR();

    clFinish(ocl.clCommandQueue);
    timer.stop("Copy Back and Merge");
    timer.print("Copy Back and Merge", 1);


    // Verify answer
    verify(h_in_out, h_in_backup, p.in_size, p.remove_value, (p.in_size * p.compaction_factor) / 100);

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
