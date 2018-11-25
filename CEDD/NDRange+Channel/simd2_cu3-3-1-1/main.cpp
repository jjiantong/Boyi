#include "support/common.h"
#include "support/ocl.h"
#include "support/timer.h"
#include "support/verify.h"

#include <unistd.h>
#include <thread>
#include <assert.h>
#include <atomic>
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
    int         n_threads;
    int         n_warmup;
    int         n_reps;
    float       alpha;
    const char *file_name;
    const char *comparison_file;

    Params(int argc, char **argv) {
        platform        = 0;
        device          = 0;
        n_work_items    = 16;
        n_threads       = 7;
        n_warmup        = 10;
        n_reps          = 100;
        alpha           = 0;
        file_name       = "input/peppa/";
        comparison_file = "output/peppa/";
        

    }
};

// Input Data -----------------------------------------------------------------
void read_input(unsigned char** all_gray_frames, int &rowsc, int &colsc, int &in_size, const Params &p) {

    for(int task_id = 0; task_id < p.n_warmup + p.n_reps; task_id++) {

        char FileName[100];
        sprintf(FileName, "%s%d.txt", p.file_name, task_id);

        FILE *fp = fopen(FileName, "r");
        if(fp == NULL)
            exit(EXIT_FAILURE);

        fscanf(fp, "%d\n", &rowsc);
        fscanf(fp, "%d\n", &colsc);

        in_size = rowsc * colsc * sizeof(unsigned char);
		all_gray_frames[task_id]    = (unsigned char *)_aligned_malloc(in_size,AOCL_ALIGNMENT);
        for(int i = 0; i < rowsc; i++) {
            for(int j = 0; j < colsc; j++) {
                fscanf(fp, "%u ", (unsigned int *)&all_gray_frames[task_id][i * colsc + j]);
            }
        }
        fclose(fp);
    }
}

// Main ------------------------------------------------------------------------------------------
int main(int argc, char **argv) {

    Params      p(argc, argv);
    OpenCLSetup ocl(p.platform, p.device);
    cl_int      clStatus;
    Timer       timer;

    // Initialize (part 1)
    timer.start("Initialization");
    const int max_wi_gauss  = ocl.max_work_items(ocl.clKernel_gauss);
    const int max_wi_sobel  = ocl.max_work_items(ocl.clKernel_sobel);
    const int max_wi_nonmax = ocl.max_work_items(ocl.clKernel_nonmax);
    const int max_wi_hyst   = ocl.max_work_items(ocl.clKernel_hyst);
    const int n_frames = p.n_warmup + p.n_reps;
	unsigned char **all_gray_frames = (unsigned char **)_aligned_malloc(n_frames * sizeof(unsigned char *),AOCL_ALIGNMENT);
    int     rowsc, colsc, in_size;
    read_input(all_gray_frames, rowsc, colsc, in_size, p);
    timer.stop("Initialization");


    // Allocate buffers
    timer.start("Allocation");
    const int CPU_PROXY = 0;
    const int GPU_PROXY = 1;
    unsigned char *    h_in_out[2];
	h_in_out[CPU_PROXY] = (unsigned char *)_aligned_malloc(in_size,AOCL_ALIGNMENT);
	h_in_out[GPU_PROXY] = (unsigned char *)_aligned_malloc(in_size,AOCL_ALIGNMENT);
    cl_mem d_in_out     = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, in_size, NULL, &clStatus);
	unsigned char *h_interm_cpu_proxy = (unsigned char *)_aligned_malloc(in_size,AOCL_ALIGNMENT);
	unsigned char *h_theta_cpu_proxy  = (unsigned char *)_aligned_malloc(in_size,AOCL_ALIGNMENT);
    cl_mem         d_interm_gpu_proxy = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, in_size, NULL, &clStatus);
    cl_mem         d_theta_gpu_proxy  = clCreateBuffer(ocl.clContext, CL_MEM_READ_WRITE, in_size, NULL, &clStatus);
    std::atomic<int> next_frame;
    //clFinish(ocl.clCommandQueue);
    ALLOC_ERR(h_in_out[CPU_PROXY], h_in_out[GPU_PROXY], h_interm_cpu_proxy, h_theta_cpu_proxy);
    CL_ERR();
    timer.stop("Allocation");
    timer.print("Allocation", 1);

    // Initialize (part 2)
    timer.start("Initialization");
	unsigned char **all_out_frames = (unsigned char **)malloc(n_frames * sizeof(unsigned char *));
    for(int i = 0; i < n_frames; i++) {
		all_out_frames[i] = (unsigned char *)malloc(in_size);
    }
	std::atomic_int *worklist    = (std::atomic_int *)malloc(sizeof(std::atomic_int));
    ALLOC_ERR(worklist);
    if(p.alpha < 0.0 || p.alpha > 1.0) { // Dynamic partitioning
        worklist[0].store(0);
    }
    next_frame.store(0);
    timer.stop("Initialization");
    timer.print("Initialization", 1);

    timer.start("Total Proxies");
    std::vector<std::thread> proxy_threads;

	int proxy_tid = 1;
    proxy_threads.push_back(std::thread([&, proxy_tid]() {

		for(int task_id = 0; task_id < n_frames; task_id ++) {

			// Next frame
			memcpy(h_in_out[proxy_tid], all_gray_frames[task_id], in_size);

			// Copy to Device
			timer.start("Copy To Device");
			clStatus = clEnqueueWriteBuffer(
				ocl.clCommandQueue1, d_in_out, CL_TRUE, 0, in_size, h_in_out[proxy_tid], 0, NULL, NULL);
			CL_ERR();
			clFinish(ocl.clCommandQueue1);
			timer.stop("Copy To Device");

			timer.start("Kernel-FPGA");
			// Execution configuration
			size_t ls[2]     = {(size_t)p.n_work_items, (size_t)p.n_work_items};
			size_t gs[2]     = {(size_t)(colsc - 2), (size_t)(rowsc - 2)};				

			timer.start("stage1");
			// GAUSSIAN KERNEL
			// Set arguments
			clSetKernelArg(ocl.clKernel_gauss, 0, sizeof(cl_mem), &d_in_out);
			clSetKernelArg(ocl.clKernel_gauss, 1, sizeof(cl_mem), &d_interm_gpu_proxy);
			clSetKernelArg(ocl.clKernel_gauss, 2, sizeof(int), &colsc);
			clSetKernelArg(ocl.clKernel_gauss, 3, (p.n_work_items + 2) * (p.n_work_items + 2) * sizeof(int), NULL);
			assert(ls[0]*ls[1] <= max_wi_gauss && 
				"The work-group size is greater than the maximum work-group size that can be used to execute gaussian kernel");
			// Kernel launch
			clStatus = clEnqueueNDRangeKernel(
				ocl.clCommandQueue1, ocl.clKernel_gauss, 2, NULL, gs, ls, 0, NULL, NULL);
			CL_ERR();

			clFinish(ocl.clCommandQueue1);
			timer.stop("stage1");


			timer.start("stage2");
			// SOBEL KERNEL
			// Set arguments
			clSetKernelArg(ocl.clKernel_sobel, 0, sizeof(cl_mem), &d_interm_gpu_proxy);
			clSetKernelArg(ocl.clKernel_sobel, 1, sizeof(cl_mem), &d_in_out);
			clSetKernelArg(ocl.clKernel_sobel, 2, sizeof(cl_mem), &d_theta_gpu_proxy);
			clSetKernelArg(ocl.clKernel_sobel, 3, sizeof(int), &colsc);
			clSetKernelArg(ocl.clKernel_sobel, 4, (p.n_work_items + 2) * (p.n_work_items + 2) * sizeof(int), NULL);
			assert(ls[0]*ls[1] <= max_wi_sobel && 
				"The work-group size is greater than the maximum work-group size that can be used to execute sobel kernel");
			// Kernel launch
			clStatus = clEnqueueNDRangeKernel(
				ocl.clCommandQueue2, ocl.clKernel_sobel, 2, NULL, gs, ls, 0, NULL, NULL);
			CL_ERR();

			clFinish(ocl.clCommandQueue2);
			timer.stop("stage2");


			size_t ls3[2]     = {(size_t)p.n_work_items / 2, (size_t)p.n_work_items};
			size_t gs3[2]     = {(size_t)(colsc - 2) / 2, (size_t)(rowsc - 2)};


			timer.start("stage3 4");
			// NON-MAXIMUM SUPPRESSION KERNEL
			// Set arguments
			clSetKernelArg(ocl.clKernel_nonmax, 0, sizeof(cl_mem), &d_in_out);
			clSetKernelArg(ocl.clKernel_nonmax, 1, sizeof(cl_mem), &d_theta_gpu_proxy);
			clSetKernelArg(ocl.clKernel_nonmax, 2, sizeof(int), &colsc);
			clSetKernelArg(ocl.clKernel_nonmax, 3, (p.n_work_items + 2) * (p.n_work_items + 2) * sizeof(int), NULL);
			assert(ls[0]*ls[1] <= max_wi_nonmax && 
				"The work-group size is greater than the maximum work-group size that can be used to execute non-maximum suppression kernel");
			// Kernel launch
			clStatus = clEnqueueNDRangeKernel(
				ocl.clCommandQueue3, ocl.clKernel_nonmax, 2, NULL, gs3, ls3, 0, NULL, NULL);
			CL_ERR();


			// HYSTERESIS KERNEL
			// Set arguments
			clSetKernelArg(ocl.clKernel_hyst, 0, sizeof(cl_mem), &d_interm_gpu_proxy);
			//clSetKernelArg(ocl.clKernel_hyst, 1, sizeof(int), &colsc);
			assert(ls[0]*ls[1] <= max_wi_hyst && 
				"The work-group size is greater than the maximum work-group size that can be used to execute hysteresis kernel");
			// Kernel launch

			size_t ls2[2]     = {(size_t)1, (size_t)1};

			clStatus =
				clEnqueueNDRangeKernel(ocl.clCommandQueue4, ocl.clKernel_hyst, 2, NULL, gs3, ls2, 0, NULL, NULL);
			CL_ERR();
					
			clFinish(ocl.clCommandQueue3);
			clFinish(ocl.clCommandQueue4);
			timer.stop("stage3 4");


			timer.stop("Kernel-FPGA");

			timer.start("Copy Back");
			clStatus = clEnqueueReadBuffer(
				ocl.clCommandQueue4, d_interm_gpu_proxy, CL_TRUE, 0, in_size, h_in_out[proxy_tid], 0, NULL, NULL);
			CL_ERR();
			clFinish(ocl.clCommandQueue4);
			timer.stop("Copy Back");

			memcpy(all_out_frames[task_id], h_in_out[proxy_tid], in_size);
                    
		}

    }));

    std::for_each(proxy_threads.begin(), proxy_threads.end(), [](std::thread &t) { t.join(); });
    clFinish(ocl.clCommandQueue1);
	clFinish(ocl.clCommandQueue2);
	clFinish(ocl.clCommandQueue3);
	clFinish(ocl.clCommandQueue4);
    timer.stop("Total Proxies");
    timer.print("Total Proxies", 1);
    timer.print("Kernel-FPGA", 1);
    timer.print("Copy To Device", 1);
    printf("\t");
    timer.print("Kernel-FPGA", 1);
    printf("\t");
	timer.print("stage1", 1);
    printf("\t");
	timer.print("stage2", 1);
    printf("\t");
	timer.print("stage3 4", 1);
    printf("\t");
    timer.print("Copy Back", 1);


    // Verify answer
    verify(all_out_frames, in_size, p.comparison_file, p.n_warmup + p.n_reps, rowsc, colsc, rowsc, colsc);

    // Release buffers
    timer.start("Deallocation");
    _aligned_free(h_in_out[GPU_PROXY]);
    clStatus = clReleaseMemObject(d_in_out);
    _aligned_free(h_in_out[CPU_PROXY]);
    _aligned_free(h_interm_cpu_proxy);
    _aligned_free(h_theta_cpu_proxy);
    for(int i = 0; i < n_frames; i++) {
        _aligned_free(all_gray_frames[i]);
    }
    _aligned_free(all_gray_frames);
    for(int i = 0; i < n_frames; i++) {
        free(all_out_frames[i]);
    }
    free(all_out_frames);
    clStatus = clReleaseMemObject(d_interm_gpu_proxy);
    clStatus = clReleaseMemObject(d_theta_gpu_proxy);
    CL_ERR();
    free(worklist);
    ocl.release();
    timer.stop("Deallocation");
    timer.print("Deallocation", 1);

    printf("Test Passed\n");
    return 0;
}
