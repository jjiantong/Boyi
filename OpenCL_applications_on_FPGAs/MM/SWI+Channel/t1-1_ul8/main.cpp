///////////////////////////////////////////////////////////////////////////////////
// This host program executes a matrix multiplication kernel to perform:
//  C = A * B
// where A is a N x K matrix, B is a K x M matrix and C is a N x M matrix.
// All dimensions must be a multiple of BLOCK_SIZE, which affects the
// underlying kernel.
//
// This host program supports partitioning the problem across multiple OpenCL
// devices if available. If there are M available devices, the problem is
// divided so that each device operates on N/M rows (with
// processed by each device is . The host program
// assumes that all devices are of the same type (that is, the same binary can
// be used), but the code can be generalized to support different device types
// easily.
//
// Verification is performed against the same computation on the host CPU.
///////////////////////////////////////////////////////////////////////////////////

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"
//#include "matrixMult.h"





#ifndef BLOCK_SIZE
#define BLOCK_SIZE 64 // default value
#endif





using namespace aocl_utils;

// OpenCL runtime configuration
cl_platform_id platform = NULL;
unsigned num_devices = 0;
scoped_array<cl_device_id> device; // num_devices elements
cl_context context = NULL;

scoped_array<cl_command_queue> queue_in; 
scoped_array<cl_command_queue> queue;
cl_program program = NULL;

scoped_array<cl_kernel> kernel_in;
scoped_array<cl_kernel> kernel; // num_devices elements
scoped_array<cl_mem> input_a_buf; // num_devices elements
scoped_array<cl_mem> input_b_buf; // num_devices elements
scoped_array<cl_mem> output_buf; // num_devices elements

// Problem data.
unsigned A_height = 2048;
unsigned A_width  = 1024;
const unsigned &B_height = A_width;
unsigned B_width  = 1024;
const unsigned &C_height = A_height;
const unsigned &C_width  = B_width;

scoped_array<scoped_aligned_ptr<float> > input_a; // num_devices elements
scoped_aligned_ptr<float> input_b;
scoped_aligned_ptr<float> input_b2;
scoped_array<scoped_aligned_ptr<float> > output; // num_devices elements
scoped_array<float> ref_output;
scoped_array<unsigned> rows_per_device; // num_devices elements

// Function prototypes
float rand_float();
bool init_opencl();
void init_problem();
void run();
void compute_reference();
void compute_reference2();
void verify();
void cleanup();

// Entry point.
int main(int argc, char **argv) {
  Options options(argc, argv);
  if(options.has("ah")) {
    A_height = options.get<unsigned>("ah");
  }
  if(options.has("aw")) {
    A_width = options.get<unsigned>("aw");
  }
  if(options.has("bw")) {
    B_width = options.get<unsigned>("bw");
  }

  printf("Matrix sizes:\n  A: %d x %d\n  B: %d x %d\n  C: %d x %d\n",
      A_height, A_width, B_height, B_width, C_height, C_width);

  if((A_height % BLOCK_SIZE) != 0 || (A_width % BLOCK_SIZE) != 0 ||
     (B_height % BLOCK_SIZE) != 0 || (B_width % BLOCK_SIZE) != 0 ||
     (C_height % BLOCK_SIZE) != 0 || (C_width % BLOCK_SIZE) != 0) {
    printf("Matrix sizes must be a multiple of %d.\n", BLOCK_SIZE);
    return -1;
  }

  if(!init_opencl()) {
    return -1;
  }

  init_problem();

  run();

  cleanup();

  return 0;
}


float rand_float() {
  return float(rand()) / float(RAND_MAX) * 20.0f - 10.0f;
}

bool init_opencl() {
  cl_int status;

  printf("Initializing OpenCL\n");

  if(!setCwdToExeDir()) {
    return false;
  }

  platform = findPlatform("Intel(R) FPGA");
  if(platform == NULL) {
    printf("ERROR: Unable to find Intel(R) FPGA OpenCL platform.\n");
    return false;
  }

  device.reset(getDevices(platform, CL_DEVICE_TYPE_ALL, &num_devices));
  printf("Platform: %s\n", getPlatformName(platform).c_str());
  printf("Using %d device(s)\n", num_devices);
  for(unsigned i = 0; i < num_devices; ++i) {
    printf("  %s\n", getDeviceName(device[i]).c_str());
  }

  context = clCreateContext(NULL, num_devices, device, &oclContextCallback, NULL, &status);
  checkError(status, "Failed to create context");

  
  
  
  
  
  std::string binary_file = getBoardBinaryFile("t1-1_ul8", device[0]);
  printf("Using AOCX: %s\n", binary_file.c_str());
  program = createProgramFromBinary(context, binary_file.c_str(), device, num_devices);








  status = clBuildProgram(program, 0, NULL, "", NULL, NULL);
  checkError(status, "Failed to build program");

  queue_in.reset(num_devices);
  queue.reset(num_devices);

  kernel_in.reset(num_devices);
  kernel.reset(num_devices);
  rows_per_device.reset(num_devices);
  input_a_buf.reset(num_devices);
  input_b_buf.reset(num_devices);
  output_buf.reset(num_devices);

  const unsigned num_block_rows = C_height / BLOCK_SIZE;

  for(unsigned i = 0; i < num_devices; ++i) {

	queue_in[i] = clCreateCommandQueue(context, device[i], CL_QUEUE_PROFILING_ENABLE, &status);
    checkError(status, "Failed to create command queue");
	queue[i] = clCreateCommandQueue(context, device[i], CL_QUEUE_PROFILING_ENABLE, &status);
    checkError(status, "Failed to create command queue");



	kernel_in[i] = clCreateKernel(program, "in", &status);
    kernel[i] = clCreateKernel(program, "matrixMult", &status);
    checkError(status, "Failed to create kernel");

    rows_per_device[i] = num_block_rows / num_devices; // this is the number of block-rows

    if(i < (num_block_rows % num_devices)) {
      rows_per_device[i]++;
    }

    rows_per_device[i] *= BLOCK_SIZE;

    input_a_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_BANK_1_ALTERA, 
        rows_per_device[i] * A_width * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for input A");

    input_b_buf[i] = clCreateBuffer(context, CL_MEM_READ_ONLY | CL_MEM_BANK_2_ALTERA, 
        B_height * B_width * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for input B");

    output_buf[i] = clCreateBuffer(context, CL_MEM_WRITE_ONLY | CL_MEM_BANK_1_ALTERA, 
        rows_per_device[i] * C_width * sizeof(float), NULL, &status);
    checkError(status, "Failed to create buffer for output");
  }

  return true;
}

void init_problem() {
  if(num_devices == 0) {
    checkError(-1, "No devices");
  }

  printf("Generating input matrices\n");
  input_a.reset(num_devices);
  output.reset(num_devices);
  for(unsigned i = 0; i < num_devices; ++i) {
    input_a[i].reset(rows_per_device[i] * A_width);
    output[i].reset(rows_per_device[i] * C_width);

    for(unsigned j = 0; j < rows_per_device[i] * A_width; ++j) {
      input_a[i][j] = rand_float();
    }
  }

  input_b.reset(B_height * B_width);
  input_b2.reset(B_height * B_width);
  for(unsigned i = 0; i < B_height * B_width; ++i) {
    input_b[i] = rand_float();
  }
  for(unsigned i = 0; i < B_height; ++i) {
    for(unsigned j = 0; j < B_width; ++j) {
      input_b2[i * B_width + j] = input_b[j * B_width + i];
    }
  }
}


void run() {
  cl_int status;


  const double time1=getCurrentTimestamp();

  for(unsigned i = 0; i < num_devices; ++i) {
    status = clEnqueueWriteBuffer(queue[i], input_a_buf[i], CL_FALSE,
        0, rows_per_device[i] * A_width * sizeof(float), input_a[i], 0, NULL, NULL);
    checkError(status, "Failed to transfer input A");

    status = clEnqueueWriteBuffer(queue[i], input_b_buf[i], CL_FALSE,
        0, B_width * B_height * sizeof(float), input_b2, 0, NULL, NULL);
    checkError(status, "Failed to transfer input B");
  }

  for(unsigned i = 0; i < num_devices; ++i) {
    clFinish(queue[i]);
  }

  scoped_array<cl_event> kernel_event(num_devices);

  const double time2 = getCurrentTimestamp();




  for(unsigned i = 0; i < num_devices; ++i) {
    
    status = clSetKernelArg(kernel_in[i], 0, sizeof(cl_mem), &input_a_buf[i]);
    status = clSetKernelArg(kernel_in[i], 1, sizeof(A_width), &A_width);
	status = clSetKernelArg(kernel_in[i], 2, sizeof(C_height), &C_height);
	status = clEnqueueTask(queue_in[i], kernel_in[i], 0, NULL, &kernel_event[i]);
	
	
    status = clSetKernelArg(kernel[i], 0, sizeof(cl_mem), &output_buf[i]);
    status = clSetKernelArg(kernel[i], 1, sizeof(cl_mem), &input_b_buf[i]);
    status = clSetKernelArg(kernel[i], 2, sizeof(B_width), &B_width);
    status = clSetKernelArg(kernel[i], 3, sizeof(A_width), &A_width);
	status = clSetKernelArg(kernel[i], 4, sizeof(C_height), &C_height);
	status = clEnqueueTask(queue[i], kernel[i], 0, NULL, &kernel_event[i]);

  }

  // Wait for all kernels to finish.
  clWaitForEvents(num_devices, kernel_event);

  const double time3 = getCurrentTimestamp();

  const double trans_time = time2 - time1;
  const double kernel_time = time3 - time2;


  printf("\nTransmission Time: %0.3f ms\n", trans_time * 1e3);
  // Wall-clock time taken.
  printf("Kernel Time: %0.3f ms\n", kernel_time * 1e3);

  // Get kernel times using the OpenCL event profiling API.
  for(unsigned i = 0; i < num_devices; ++i) {
    cl_ulong time_ns = getStartEndTime(kernel_event[i]);
    printf("Kernel Time (using event): %0.3f ms\n", double(time_ns) * 1e-6);
  }

  // Compute the throughput (GFLOPS).
  // There are C_width * C_height output values, with each value
  // computed using A_width multiplies and adds.
  const float flops = (float)(2.0f * C_width * C_height * A_width / kernel_time);
  printf("\nThroughput: %0.2f GFLOPS\n\n", flops * 1e-9);

  for(unsigned i = 0; i < num_devices; ++i) {
    clReleaseEvent(kernel_event[i]);
  }

  for(unsigned i = 0; i < num_devices; ++i) {
    status = clEnqueueReadBuffer(queue[i], output_buf[i], CL_TRUE,
        0, rows_per_device[i] * C_width * sizeof(float), output[i], 0, NULL, NULL);
    checkError(status, "Failed to read output matrix");
  }

  compute_reference();
  verify();
}

void compute_reference2() {
  printf("Computing reference output\n");
  ref_output.reset(C_height * C_width);
	

	float sum = 0.0f;

	for(int kk = 0; kk < A_width; kk += BLOCK_SIZE){
		for(int cc = 0; cc < C_width; cc += BLOCK_SIZE){
			for(int r = 0; r < C_height; r ++){
				for(int c = cc; c < cc + BLOCK_SIZE; c++){
					sum = ref_output[r * C_width + c];
					for(int k = kk; k < kk + BLOCK_SIZE; k++){	
						sum += input_a[0][r * A_width + k] * input_b[k * C_width + c];				
 					}
					ref_output[r * C_width + c] = sum;
				}			
			}
		}
	}

}

void compute_reference() {
  // Compute the reference output.
  printf("Computing reference output\n");
  ref_output.reset(C_height * C_width);

  for(unsigned y = 0, dev_index = 0; y < C_height; ++dev_index) {
    for(unsigned yy = 0; yy < rows_per_device[dev_index]; ++yy, ++y) {
      for(unsigned x = 0; x < C_width; ++x) {
        // Compute result for C(y, x)
        float sum = 0.0f;
        for(unsigned k = 0; k < A_width; ++k) {
          sum += input_a[dev_index][yy * A_width + k] * input_b[k * B_width + x];
        }
        ref_output[y * C_width + x] = sum;
      }
    }
  }
}



void verify() {
  printf("Verifying\n");

  float diff = 0.0f;
  float ref = 0.0f;
  for(unsigned y = 0, dev_index = 0; y < C_height; ++dev_index) {
    for(unsigned yy = 0; yy < rows_per_device[dev_index]; ++yy, ++y) {
      for(unsigned x = 0; x < C_width; ++x) {
        const float o = output[dev_index][yy * C_width + x];
        const float r = ref_output[y * C_width + x];
        const float d = o - r;
        diff += d * d;
        ref += r * r;
      }
    }
  }

  const float diff_l2norm = sqrtf(diff);
  const float ref_l2norm = sqrtf(ref);
  const float error = diff_l2norm / ref_l2norm;
  const bool pass = error < 1e-6;
  printf("Verification: %s\n", pass ? "PASS" : "FAIL");
  if(!pass) {
    printf("Error (L^2-Norm): %0.3g\n", error);
  }
}

void cleanup() {
  for(unsigned i = 0; i < num_devices; ++i) {
    if(kernel_in && kernel_in[i]) {
      clReleaseKernel(kernel_in[i]);
    }
	if(kernel && kernel[i]) {
      clReleaseKernel(kernel[i]);
    }
	if(queue_in && queue_in[i]) {
      clReleaseCommandQueue(queue_in[i]);
    }
    if(queue && queue[i]) {
      clReleaseCommandQueue(queue[i]);
    }
    if(input_a_buf && input_a_buf[i]) {
      clReleaseMemObject(input_a_buf[i]);
    }
    if(input_b_buf && input_b_buf[i]) {
      clReleaseMemObject(input_b_buf[i]);
    }
    if(output_buf && output_buf[i]) {
      clReleaseMemObject(output_buf[i]);
    }
  }

  if(program) {
    clReleaseProgram(program);
  }
  if(context) {
    clReleaseContext(context);
  }
}

