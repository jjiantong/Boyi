#include "support/ocl.h"
#include "support/timer.h"

#include <unistd.h>
#include <thread>
#include <assert.h>
#include <vector>
#include <algorithm>
#include <string.h>

#include "CL/opencl.h"

#define AOCL_ALIGNMENT 64
#include <malloc.h>

// Params ---------------------------------------------------------------------
struct Params {

    int         platform;
    int         device;
    int         n_work_items;
	int			n_work_groups;
    int         n_warmup;
    int         n_reps;
    const char *file_name;

    Params(int argc, char **argv) {
        platform        = 0;
        device          = 0;
        n_work_items    = 256;
		n_work_groups	= 512;
        n_warmup        = 10;
        n_reps          = 100;
        file_name       = "input/input.txt";
        

    }
};

// Main ------------------------------------------------------------------------------------------
int main(int argc, char **argv) {

    Params      p(argc, argv);
    OpenCLSetup ocl(p.platform, p.device);
    cl_int      clStatus;
    Timer       timer;

	// Allocate
    timer.start("Allocation");
	int in_size		   = p.n_work_items * p.n_work_groups * 2 * 16;
	int *h_input	   = (int*)_aligned_malloc(in_size * sizeof(int), AOCL_ALIGNMENT);
	int *h_output	   = (int*)_aligned_malloc(in_size * sizeof(int), AOCL_ALIGNMENT);
	int *h_out_ref	   = (int*)_aligned_malloc(in_size * sizeof(int), AOCL_ALIGNMENT);
	cl_mem d_input	   = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, in_size * sizeof(int), NULL, &clStatus);
	cl_mem d_output	   = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, in_size * sizeof(int), NULL, &clStatus);
	clFinish(ocl.clCommandQueue);
    CL_ERR();
    timer.stop("Allocation");
    timer.print("Allocation", 1);

	// Initialize 
    timer.start("Initialization");
	int temp;
	FILE *fp = fopen(p.file_name, "r");
	if(fp == NULL){
		printf("can not open file");
	}
	for(int i = 0; i < in_size; i++){
		fscanf(fp, "%d", &temp);
		h_input[i] = temp;
	}
	clFinish(ocl.clCommandQueue);
    timer.stop("Initialization");
	timer.print("Initialization", 1);

	// Copy to device
    timer.start("Copy To Device");
	clStatus = clEnqueueWriteBuffer(ocl.clCommandQueue_in, d_input, CL_TRUE, 0,
		in_size * sizeof(int), h_input, 0, NULL, NULL);
	clFinish(ocl.clCommandQueue_in);
	CL_ERR();
    timer.stop("Copy To Device");
    timer.print("Copy To Device", 1);


    for(int rep = 0; rep < p.n_warmup + p.n_reps; rep++) {

		if(rep >= p.n_warmup)
			timer.start("Kernel-FPGA");			

		// Set arguments
        clSetKernelArg(ocl.clKernel_in, 0, sizeof(cl_mem), &d_input);
		clSetKernelArg(ocl.clKernel_in, 1, sizeof(int), &in_size);
        // Kernel launch
        clStatus = clEnqueueTask(
            ocl.clCommandQueue_in, ocl.clKernel_in, 0, NULL, NULL);
        CL_ERR();

		clSetKernelArg(ocl.clKernel, 0, sizeof(cl_mem), &d_output);
		clSetKernelArg(ocl.clKernel, 1, sizeof(int), &in_size);
        // Kernel launch
        clStatus = clEnqueueTask(
            ocl.clCommandQueue, ocl.clKernel, 0, NULL, NULL);
        CL_ERR();

		clFinish(ocl.clCommandQueue_in);
		clFinish(ocl.clCommandQueue);
		
		if(rep >= p.n_warmup)
			timer.stop("Kernel-FPGA");
        


        // Copy back
        if(rep >= p.n_warmup)
            timer.start("Copy Back and Merge");   
        clStatus = clEnqueueReadBuffer(ocl.clCommandQueue, d_output, CL_TRUE, 0,
            in_size * sizeof(int), h_output, 0, NULL, NULL);
        CL_ERR();
        clFinish(ocl.clCommandQueue);
        if(rep >= p.n_warmup)
            timer.stop("Copy Back and Merge");
    }


	timer.print("Kernel-FPGA", p.n_reps);
	timer.print("Copy Back and Merge", p.n_reps);


    // Verify answer
	h_out_ref[0] = 0;
	if(h_out_ref[0]!= h_output[0]){
		printf("\nTest failed");
		return 0;
	}
	for(int i = 1; i < in_size; i ++){
		h_out_ref[i] = h_out_ref[i-1] + h_input[i-1];
		if (h_out_ref[i]!= h_output[i]){
			printf("\nTest failed,%d",i);
			return 0;
		}
	}
	printf("\nTest passed");

    // Free memory
    timer.start("Deallocation");

    _aligned_free(h_input);
    _aligned_free(h_output);
	_aligned_free(h_out_ref);
    clStatus = clReleaseMemObject(d_input);
    clStatus = clReleaseMemObject(d_output);
    CL_ERR();

    ocl.release();

    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    return 0;

}
