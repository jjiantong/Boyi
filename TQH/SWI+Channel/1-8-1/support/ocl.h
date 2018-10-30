#include <CL/cl.h>
#include <fstream>
#include <iostream>

#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;

// Allocation error checking
#define ERR_1(v1)                                                                                                      \
    if(v1 == NULL) {                                                                                                   \
        fprintf(stderr, "Allocation error at %s, %d\n", __FILE__, __LINE__);                                           \
        exit(-1);                                                                                                      \
    }
#define ERR_2(v1,v2) ERR_1(v1) ERR_1(v2)
#define ERR_3(v1,v2,v3) ERR_2(v1,v2) ERR_1(v3)
#define ERR_4(v1,v2,v3,v4) ERR_3(v1,v2,v3) ERR_1(v4)
#define ERR_5(v1,v2,v3,v4,v5) ERR_4(v1,v2,v3,v4) ERR_1(v5)
#define ERR_6(v1,v2,v3,v4,v5,v6) ERR_5(v1,v2,v3,v4,v5) ERR_1(v6)
#define GET_ERR_MACRO(_1,_2,_3,_4,_5,_6,NAME,...) NAME
#define ALLOC_ERR(...) GET_ERR_MACRO(__VA_ARGS__,ERR_6,ERR_5,ERR_4,ERR_3,ERR_2,ERR_1)(__VA_ARGS__)

#define CL_ERR()                                                                                                       \
    if(clStatus != CL_SUCCESS) {                                                                                       \
        fprintf(stderr, "OpenCL error: %d\n at %s, %d\n", clStatus, __FILE__, __LINE__);                               \
        exit(-1);                                                                                                      \
    }

struct OpenCLSetup {

    cl_context       clContext;
    cl_command_queue clCommandQueue_in;
	cl_command_queue clCommandQueue_0;
	cl_command_queue clCommandQueue_1;
	cl_command_queue clCommandQueue_2;
	cl_command_queue clCommandQueue_3;	
	cl_command_queue clCommandQueue_4;
	cl_command_queue clCommandQueue_5;
	cl_command_queue clCommandQueue_6;
	cl_command_queue clCommandQueue_7;
	cl_command_queue clCommandQueue_out;
    cl_program       clProgram;
    cl_kernel        clKernel_in;
	cl_kernel        clKernel_0;
	cl_kernel        clKernel_1;
	cl_kernel        clKernel_2;
	cl_kernel        clKernel_3;
	cl_kernel        clKernel_4;
	cl_kernel        clKernel_5;
	cl_kernel        clKernel_6;
	cl_kernel        clKernel_7;
	cl_kernel        clKernel_out;
    cl_device_id     clDeviceID;


    OpenCLSetup(int platform, int device) {
        cl_int  clStatus;
		

		// Get the OpenCL platform.
		cl_platform_id clPlatform = NULL;
		clPlatform = findPlatform("Intel(R) FPGA");
		if(clPlatform == NULL) {
			printf("ERROR: Unable to find Intel(R) FPGA OpenCL platform.\n");
		}


		// Query the available OpenCL device.
        cl_uint clNumDevices;
        clStatus = clGetDeviceIDs(clPlatform, CL_DEVICE_TYPE_ALL, 0, NULL, &clNumDevices);
        CL_ERR();
        cl_device_id *clDevices = new cl_device_id[clNumDevices];
        clStatus                = clGetDeviceIDs(clPlatform, CL_DEVICE_TYPE_ALL, clNumDevices, clDevices, NULL);
        CL_ERR();

		printf("Platform: %s\n",getPlatformName(clPlatform).c_str());
		printf("Using %d device(s)\n",clNumDevices);
		for(unsigned i = 0; i < clNumDevices; ++i) {
			printf("  %s\n", getDeviceName(clDevices[i]).c_str());
		}

		// Create the context.
		clContext = clCreateContext(NULL, clNumDevices, clDevices, &oclContextCallback, NULL, &clStatus);
        CL_ERR();
        char device_name_[100];
        clGetDeviceInfo(clDevices[device], CL_DEVICE_NAME, 100, &device_name_, NULL);
        clDeviceID = clDevices[device];
        fprintf(stderr, "%s\t", device_name_);


		// Command queue.
#ifdef OCL_2_0
        cl_queue_properties prop[] = {0};
        clCommandQueue             = clCreateCommandQueueWithProperties(clContext, clDevices[device], prop, &clStatus);
#else
        clCommandQueue_in  = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_0   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_1   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_2   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_3   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);		
		clCommandQueue_4   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_5   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_6   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_7   = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
		clCommandQueue_out = clCreateCommandQueue(clContext, clDevices[device], 0, &clStatus);
#endif
        CL_ERR();


		// Create the program.
		std::string binary_file = getBoardBinaryFile("1-8-1", clDeviceID);
		printf("\nUsing AOCX:%s\n",binary_file.c_str());
		clProgram = createProgramFromBinary(clContext, binary_file.c_str(), &clDeviceID, 1);
		
		CL_ERR();

        char clOptions[50];
#ifdef OCL_2_0
        sprintf(clOptions, "-I. -cl-std=CL2.0");
#else
        sprintf(clOptions, "-I.");
#endif


		// Build the program that was just created.
        clStatus = clBuildProgram(clProgram, 0, NULL, "", NULL, NULL);  
        if(clStatus == CL_BUILD_PROGRAM_FAILURE) {
            // Determine the size of the log
            size_t log_size;
            clGetProgramBuildInfo(clProgram, clDevices[device], CL_PROGRAM_BUILD_LOG, 0, NULL, &log_size);
            // Allocate memory for the log
            char *log = (char *)malloc(log_size);
            // Get the log
            clGetProgramBuildInfo(clProgram, clDevices[device], CL_PROGRAM_BUILD_LOG, log_size, log, NULL);
            // Print the log
            fprintf(stderr, "%s\t", log);
        }
        CL_ERR();


		// Kernel.
        clKernel_in  = clCreateKernel(clProgram, "TQHistogram_in", &clStatus);
		clKernel_0   = clCreateKernel(clProgram, "TQHistogram_0", &clStatus);
		clKernel_1   = clCreateKernel(clProgram, "TQHistogram_1", &clStatus);
		clKernel_2   = clCreateKernel(clProgram, "TQHistogram_2", &clStatus);
		clKernel_3   = clCreateKernel(clProgram, "TQHistogram_3", &clStatus);		
		clKernel_4   = clCreateKernel(clProgram, "TQHistogram_4", &clStatus);
		clKernel_5   = clCreateKernel(clProgram, "TQHistogram_5", &clStatus);
		clKernel_6   = clCreateKernel(clProgram, "TQHistogram_6", &clStatus);
		clKernel_7   = clCreateKernel(clProgram, "TQHistogram_7", &clStatus);
		clKernel_out = clCreateKernel(clProgram, "TQHistogram_out", &clStatus);
        CL_ERR();
    }

    size_t max_work_items(cl_kernel clKernel) {
        size_t max_work_items;
        cl_int clStatus =  clGetKernelWorkGroupInfo(
            clKernel, clDeviceID, CL_KERNEL_WORK_GROUP_SIZE, sizeof(size_t), &max_work_items, NULL);
        CL_ERR();
        return max_work_items;
    }

    void release() {
        clReleaseKernel(clKernel_in);
		clReleaseKernel(clKernel_0);
		clReleaseKernel(clKernel_1);
		clReleaseKernel(clKernel_2);
		clReleaseKernel(clKernel_3);	
		clReleaseKernel(clKernel_4);
		clReleaseKernel(clKernel_5);
		clReleaseKernel(clKernel_6);
		clReleaseKernel(clKernel_7);
		clReleaseKernel(clKernel_out);
        clReleaseProgram(clProgram);
        clReleaseCommandQueue(clCommandQueue_in);
		clReleaseCommandQueue(clCommandQueue_0);
		clReleaseCommandQueue(clCommandQueue_1);
		clReleaseCommandQueue(clCommandQueue_2);
		clReleaseCommandQueue(clCommandQueue_3);	
		clReleaseCommandQueue(clCommandQueue_4);
		clReleaseCommandQueue(clCommandQueue_5);
		clReleaseCommandQueue(clCommandQueue_6);
		clReleaseCommandQueue(clCommandQueue_7);
		clReleaseCommandQueue(clCommandQueue_out);
        clReleaseContext(clContext);
    }
};
