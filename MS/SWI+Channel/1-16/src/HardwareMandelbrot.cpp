#include "HardwareMandelbrot.h"

using namespace aocl_utils;

extern unsigned int theWidth;
extern unsigned int theHeight;

// ACL runtime configuration
static unsigned numDevices = 0;
static cl_platform_id thePlatform;
static scoped_array<cl_device_id> theDevices;
static cl_context theContext;


static scoped_array<cl_command_queue> theQueues_in;
static scoped_array<cl_command_queue> theQueues;

static scoped_array<cl_command_queue> theQueues_1;
static scoped_array<cl_command_queue> theQueues_2;
static scoped_array<cl_command_queue> theQueues_3;

static scoped_array<cl_command_queue> theQueues_4;
static scoped_array<cl_command_queue> theQueues_5;
static scoped_array<cl_command_queue> theQueues_6;
static scoped_array<cl_command_queue> theQueues_7;
static scoped_array<cl_command_queue> theQueues_8;
static scoped_array<cl_command_queue> theQueues_9;
static scoped_array<cl_command_queue> theQueues_10;
static scoped_array<cl_command_queue> theQueues_11;
static scoped_array<cl_command_queue> theQueues_12;
static scoped_array<cl_command_queue> theQueues_13;
static scoped_array<cl_command_queue> theQueues_14;
static scoped_array<cl_command_queue> theQueues_15;


static scoped_array<cl_kernel> theKernels_in;
static scoped_array<cl_kernel> theKernels;

static scoped_array<cl_kernel> theKernels_1;
static scoped_array<cl_kernel> theKernels_2;
static scoped_array<cl_kernel> theKernels_3;

static scoped_array<cl_kernel> theKernels_4;
static scoped_array<cl_kernel> theKernels_5;
static scoped_array<cl_kernel> theKernels_6;
static scoped_array<cl_kernel> theKernels_7;
static scoped_array<cl_kernel> theKernels_8;
static scoped_array<cl_kernel> theKernels_9;
static scoped_array<cl_kernel> theKernels_10;
static scoped_array<cl_kernel> theKernels_11;
static scoped_array<cl_kernel> theKernels_12;
static scoped_array<cl_kernel> theKernels_13;
static scoped_array<cl_kernel> theKernels_14;
static scoped_array<cl_kernel> theKernels_15;


static cl_program theProgram;
static cl_int theStatus;
static scoped_array<unsigned> rowsPerDevice;

static scoped_array<cl_mem> thePixelData;
static unsigned int thePixelDataWidth = 0;
static unsigned int thePixelDataHeight = 0;

static cl_mem theHardColorTable = 0;
static unsigned int theHardColorTableSize = 0;

// Reset the frame buffer size
int hardwareSetFrameBufferSize()
{
  if(thePixelDataWidth != theWidth &&
    thePixelDataHeight != theHeight)
  {
    // Set new sizes
    thePixelDataWidth = theWidth;
    thePixelDataHeight = theHeight;

    // If the buffer already exists release it
    if(thePixelData) {
      for(unsigned i = 0; i < numDevices; ++i) {
        clReleaseMemObject(thePixelData[i]);
      }
    }

    // Distribute rows evenly across all devices.
    rowsPerDevice.reset(numDevices);
    for(unsigned i = 0; i < numDevices; ++i) {
      rowsPerDevice[i] = thePixelDataHeight / numDevices;
      if(i < (thePixelDataHeight % numDevices)) { // for extra rows
        rowsPerDevice[i]++;
      }
    }

    thePixelData.reset(numDevices);
    for(unsigned i = 0; i < numDevices; ++i) {
      // create the input pixel data buffer
      thePixelData[i] = clCreateBuffer(theContext, CL_MEM_WRITE_ONLY, 
          thePixelDataWidth*rowsPerDevice[i]*sizeof(unsigned int), NULL, &theStatus);
      checkError(theStatus, "Failed to create input pixel buffer");
    }
  }

  // Return success
  return 0;
}

// get the platform and device, and create the context, program, and kernels
int hardwareInitialize()
{
  if(!setCwdToExeDir()) 
  {
    return -1;
  }

  // Set up the platform
  thePlatform = findPlatform("Intel(R) FPGA");
  if(thePlatform == NULL)
  {
    printf("Found no platforms!\n");
    hardwareRelease();
    return -1;
  }

  // Set up the device(s)
  theDevices.reset(getDevices(thePlatform, CL_DEVICE_TYPE_ALL, &numDevices));

  // Print the name of the platform being used
  printf("Using platform: %s\n", getPlatformName(thePlatform).c_str());
  printf("Using %d devices:\n", numDevices);
  for(unsigned i = 0; i < numDevices; ++i) {
    printf("  %s\n", getDeviceName(theDevices[i]).c_str());
  }

  // Create a context
  theContext = clCreateContext(0, numDevices, theDevices, &oclContextCallback, NULL, &theStatus);
  checkError(theStatus, "Failed to create context");


  // Create command queues
  theQueues.reset(numDevices);

  theQueues_in.reset(numDevices);  
  
  theQueues_1.reset(numDevices);
  theQueues_2.reset(numDevices);
  theQueues_3.reset(numDevices);
  
  theQueues_4.reset(numDevices);
  theQueues_5.reset(numDevices);
  theQueues_6.reset(numDevices);
  theQueues_7.reset(numDevices);
  theQueues_8.reset(numDevices);
  theQueues_9.reset(numDevices);
  theQueues_10.reset(numDevices);
  theQueues_11.reset(numDevices);
  theQueues_12.reset(numDevices);
  theQueues_13.reset(numDevices);
  theQueues_14.reset(numDevices);
  theQueues_15.reset(numDevices);


  for(unsigned i = 0; i < numDevices; ++i) {
 	theQueues_in[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);   
    theQueues[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	
	theQueues_1[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_2[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_3[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	
	theQueues_4[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_5[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_6[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_7[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_8[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_9[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_10[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_11[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_12[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_13[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_14[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);
	theQueues_15[i] = clCreateCommandQueue(theContext, theDevices[i], CL_QUEUE_PROFILING_ENABLE, &theStatus);

    checkError(theStatus, "Failed to create command queue");
  }

  // the name of the kernel we are going to load
  //const char *kernel_name = "hw_mandelbrot_frame";
  








  // Create the program using the binary aocx file
  std::string binary_file = getBoardBinaryFile("1-16", theDevices[0]);
  printf("Using AOCX: %s\n", binary_file.c_str());
  theProgram = createProgramFromBinary(theContext, binary_file.c_str(), theDevices, numDevices);







  // Create the kernels
  theKernels.reset(numDevices);
  theKernels_in.reset(numDevices);
  
  theKernels_1.reset(numDevices);
  theKernels_2.reset(numDevices);
  theKernels_3.reset(numDevices);
  
  theKernels_4.reset(numDevices);
  theKernels_5.reset(numDevices);
  theKernels_6.reset(numDevices);
  theKernels_7.reset(numDevices);
  theKernels_8.reset(numDevices);
  theKernels_9.reset(numDevices);
  theKernels_10.reset(numDevices);
  theKernels_11.reset(numDevices);
  theKernels_12.reset(numDevices);
  theKernels_13.reset(numDevices);
  theKernels_14.reset(numDevices);
  theKernels_15.reset(numDevices);



  for(unsigned i = 0; i < numDevices; ++i) {
    theKernels_in[i] = clCreateKernel(theProgram, "in", &theStatus);
    theKernels[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_0", &theStatus);
	
	theKernels_1[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_1", &theStatus);
	theKernels_2[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_2", &theStatus);
	theKernels_3[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_3", &theStatus);
	
	theKernels_4[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_4", &theStatus);
	theKernels_5[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_5", &theStatus);
	theKernels_6[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_6", &theStatus);
	theKernels_7[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_7", &theStatus);
	theKernels_8[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_8", &theStatus);
	theKernels_9[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_9", &theStatus);
	theKernels_10[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_10", &theStatus);
	theKernels_11[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_11", &theStatus);
	theKernels_12[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_12", &theStatus);
	theKernels_13[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_13", &theStatus);
	theKernels_14[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_14", &theStatus);
	theKernels_15[i] = clCreateKernel(theProgram, "hw_mandelbrot_frame_15", &theStatus);

    checkError(theStatus, "Failed to create kernel");
  }

  // Return success
  return 0;
}

// Set the color table
int hardwareSetColorTable(
  unsigned int* aColorTable,
  unsigned int aColorTableSize)
{
  // If the color table is a different size than before
  if(theHardColorTableSize != aColorTableSize)
  {
    // Set new table size
    theHardColorTableSize = aColorTableSize;

    // Free old table
    if(theHardColorTable) clReleaseMemObject(theHardColorTable);

    // Create new table
    theHardColorTable = clCreateBuffer(theContext, CL_MEM_READ_ONLY, aColorTableSize*sizeof(unsigned int), NULL, &theStatus);
    checkError(theStatus, "Failed to create color table buffer");
  }

  // Write the color table data to the device on the current queue
  theStatus = clEnqueueWriteBuffer(theQueues[0], theHardColorTable, CL_TRUE, 0, aColorTableSize*sizeof(unsigned int), aColorTable, 0, NULL, NULL);
  checkError(theStatus, "Failed to write to color table buffer");

  // Return success
  return 0;
}

// calculate the current frame using Altera hardware
int hardwareCalculateFrame(
  double aStartX,
  double aStartY,
  double aScale,
  unsigned int* aFrameBuffer)
{
  // Make sure width and height match up
  hardwareSetFrameBufferSize();

  unsigned rowOffset = 0;
  
  




  
  scoped_array<cl_event> kernel_event(numDevices);

  const double start_time = getCurrentTimestamp();
  
  





  
  
  for(unsigned i = 0; i < numDevices; rowOffset += rowsPerDevice[i++])
  {
    // Create ND range size
    size_t globalSize[2] = {thePixelDataWidth, rowsPerDevice[i]};

    // Set the arguments
    //unsigned argi = 0;
    

    theStatus = clSetKernelArg(theKernels_in[i], 0, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_in[i], 1, sizeof(cl_mem), (void*)&theHardColorTable);
	
	
	
	theStatus = clSetKernelArg(theKernels[i], 0, sizeof(cl_double), (void*)&aStartX);
    const double offsetedStartY = aStartY - rowOffset * aScale;
    theStatus = clSetKernelArg(theKernels[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels[i], 5, sizeof(cl_uint), (void*)&theWidth);

	
	theStatus = clSetKernelArg(theKernels_1[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_1[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_1[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_1[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_1[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_1[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_2[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_2[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_2[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_2[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_2[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_2[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_3[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_3[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_3[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_3[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_3[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_3[i], 5, sizeof(cl_uint), (void*)&theWidth);



	
    theStatus = clSetKernelArg(theKernels_4[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_4[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_4[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_4[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_4[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_4[i], 5, sizeof(cl_uint), (void*)&theWidth);


	theStatus = clSetKernelArg(theKernels_5[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_5[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_5[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_5[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_5[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_5[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_6[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_6[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_6[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_6[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_6[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_6[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_7[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_7[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_7[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_7[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_7[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_7[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_8[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_8[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_8[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_8[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_8[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_8[i], 5, sizeof(cl_uint), (void*)&theWidth);


	theStatus = clSetKernelArg(theKernels_9[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_9[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_9[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_9[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_9[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_9[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_10[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_10[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_10[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_10[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_10[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_10[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_11[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_11[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_11[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_11[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_11[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_11[i], 5, sizeof(cl_uint), (void*)&theWidth);




    theStatus = clSetKernelArg(theKernels_12[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_12[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_12[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_12[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_12[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_12[i], 5, sizeof(cl_uint), (void*)&theWidth);


	theStatus = clSetKernelArg(theKernels_13[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_13[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_13[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_13[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_13[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_13[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_14[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_14[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_14[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_14[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_14[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_14[i], 5, sizeof(cl_uint), (void*)&theWidth);



	theStatus = clSetKernelArg(theKernels_15[i], 0, sizeof(cl_double), (void*)&aStartX);
    theStatus = clSetKernelArg(theKernels_15[i], 1, sizeof(cl_double), (void*)&offsetedStartY);
    theStatus = clSetKernelArg(theKernels_15[i], 2, sizeof(cl_double), (void*)&aScale);
    theStatus = clSetKernelArg(theKernels_15[i], 3, sizeof(cl_uint), (void*)&theHardColorTableSize);
    theStatus = clSetKernelArg(theKernels_15[i], 4, sizeof(cl_mem), (void*)&thePixelData[i]);
    theStatus = clSetKernelArg(theKernels_15[i], 5, sizeof(cl_uint), (void*)&theWidth);
	


    // Launch kernel
	theStatus = clEnqueueTask(theQueues_in[i], theKernels_in[i], 0, NULL, &kernel_event[i]);
    theStatus = clEnqueueTask(theQueues[i], theKernels[i], 0, NULL, &kernel_event[i]);
	
	theStatus = clEnqueueTask(theQueues_1[i], theKernels_1[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_2[i], theKernels_2[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_3[i], theKernels_3[i], 0, NULL, &kernel_event[i]);
	
	theStatus = clEnqueueTask(theQueues_4[i], theKernels_4[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_5[i], theKernels_5[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_6[i], theKernels_6[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_7[i], theKernels_7[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_8[i], theKernels_8[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_9[i], theKernels_9[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_10[i], theKernels_10[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_11[i], theKernels_11[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_12[i], theKernels_12[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_13[i], theKernels_13[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_14[i], theKernels_14[i], 0, NULL, &kernel_event[i]);
	theStatus = clEnqueueTask(theQueues_15[i], theKernels_15[i], 0, NULL, &kernel_event[i]);

    checkError(theStatus, "Failed to enqueue kernel");
  }








  clWaitForEvents(numDevices, kernel_event);

  const double end_time = getCurrentTimestamp();

  const double kernel_time = end_time - start_time;

  printf("\nKernel time: %0.3f ms\n",kernel_time * 1e3);

  for(unsigned i = 0; i < numDevices; rowOffset += rowsPerDevice[i++]) {
    cl_ulong time_ns = getStartEndTime(kernel_event[i]);
    printf("Kernel Time (using event): %0.3f ms\n", double(time_ns) * 1e-6);
  }


  for(unsigned i = 0; i < numDevices; rowOffset += rowsPerDevice[i++]) {
    clReleaseEvent(kernel_event[i]);
  }







  rowOffset = 0;
  for(unsigned i = 0; i < numDevices; rowOffset += rowsPerDevice[i++])
  {
    // Read the output
    theStatus = clEnqueueReadBuffer(theQueues[i], thePixelData[i], CL_TRUE, 0, thePixelDataWidth*rowsPerDevice[i]*sizeof(unsigned int), &aFrameBuffer[rowOffset * theWidth], 0, NULL, NULL);
    checkError(theStatus, "Failed to read output");
  }

  // Return success
  return 0;
}


// free memory allocated by the program
int hardwareRelease()
{
  // Release all created objects
  for(unsigned i = 0; i < numDevices; ++i)
  {
	if(theKernels_in && theKernels_in[i]) 
      clReleaseKernel(theKernels_in[i]);
    if(theKernels && theKernels[i]) 
      clReleaseKernel(theKernels[i]);
	
	if(theKernels_1 && theKernels_1[i]) 
      clReleaseKernel(theKernels_1[i]);
	if(theKernels_2 && theKernels_2[i]) 
      clReleaseKernel(theKernels_2[i]);
	if(theKernels_3 && theKernels_3[i]) 
      clReleaseKernel(theKernels_3[i]);
	
	if(theKernels_4 && theKernels_4[i]) 
      clReleaseKernel(theKernels_4[i]);
	if(theKernels_5 && theKernels_5[i]) 
      clReleaseKernel(theKernels_5[i]);
	if(theKernels_6 && theKernels_6[i]) 
      clReleaseKernel(theKernels_6[i]);
	if(theKernels_7 && theKernels_7[i]) 
      clReleaseKernel(theKernels_7[i]);
	if(theKernels_8 && theKernels_8[i]) 
      clReleaseKernel(theKernels_8[i]);
	if(theKernels_9 && theKernels_9[i]) 
      clReleaseKernel(theKernels_9[i]);
	if(theKernels_10 && theKernels_10[i]) 
      clReleaseKernel(theKernels_10[i]);
	if(theKernels_11 && theKernels_11[i]) 
      clReleaseKernel(theKernels_11[i]);
	if(theKernels_12 && theKernels_12[i]) 
      clReleaseKernel(theKernels_12[i]);
	if(theKernels_13 && theKernels_13[i]) 
      clReleaseKernel(theKernels_13[i]);
	if(theKernels_14 && theKernels_14[i]) 
      clReleaseKernel(theKernels_14[i]);
	if(theKernels_15 && theKernels_15[i]) 
      clReleaseKernel(theKernels_15[i]);



	if(theQueues_in && theQueues_in[i]) 
      clReleaseCommandQueue(theQueues_in[i]);
    if(theQueues && theQueues[i]) 
      clReleaseCommandQueue(theQueues[i]);
	
	
	if(theQueues_1 && theQueues_1[i]) 
      clReleaseCommandQueue(theQueues_1[i]);
	if(theQueues_2 && theQueues_2[i]) 
      clReleaseCommandQueue(theQueues_2[i]);
	if(theQueues_3 && theQueues_3[i]) 
      clReleaseCommandQueue(theQueues_3[i]);
	
	if(theQueues_4 && theQueues_4[i]) 
      clReleaseCommandQueue(theQueues_4[i]);
	if(theQueues_5 && theQueues_5[i]) 
      clReleaseCommandQueue(theQueues_5[i]);
	if(theQueues_6 && theQueues_6[i]) 
      clReleaseCommandQueue(theQueues_6[i]);
	if(theQueues_7 && theQueues_7[i]) 
      clReleaseCommandQueue(theQueues_7[i]);
	if(theQueues_8 && theQueues_8[i]) 
      clReleaseCommandQueue(theQueues_8[i]);
	if(theQueues_9 && theQueues_9[i]) 
      clReleaseCommandQueue(theQueues_9[i]);
	if(theQueues_10 && theQueues_10[i]) 
      clReleaseCommandQueue(theQueues_10[i]);
	if(theQueues_11 && theQueues_11[i]) 
      clReleaseCommandQueue(theQueues_11[i]);
	if(theQueues_12 && theQueues_12[i]) 
      clReleaseCommandQueue(theQueues_12[i]);
	if(theQueues_13 && theQueues_13[i]) 
      clReleaseCommandQueue(theQueues_13[i]);
	if(theQueues_14 && theQueues_14[i]) 
      clReleaseCommandQueue(theQueues_14[i]);
	if(theQueues_15 && theQueues_15[i]) 
      clReleaseCommandQueue(theQueues_15[i]);



    if(thePixelData && thePixelData[i]) 
      clReleaseMemObject(thePixelData[i]);
  }
  if(theProgram) 
    clReleaseProgram(theProgram);
  if(theContext) 
    clReleaseContext(theContext);
  if(theHardColorTable) 
    clReleaseMemObject(theHardColorTable);

  // Return success
  return 0;
}

// Called by aocl_utils::checkError
void cleanup() {
  hardwareRelease();
}

