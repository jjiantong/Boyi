#ifndef __MANDELBROT_H__
#define __MANDELBROT_H__

#include "coordinates.h"

#include "AOCLUtils/aocl_utils.h"

#include "HardwareMandelbrot.h"
#include "SoftwareMandelbrot.h"

// Define labels for using software or hardware to calculate the frame
#define HARDWARE 0
#define SOFTWARE 1

// Initialize the Mandelbrot functions
int mandelbrotInitialize();

// Set the color table
int mandelbrotSetColorTable(
  unsigned int* aColorTable,
  unsigned int aColorTableSize);

// Swap between using hardware and software to calculate
int mandelbrotSwitchCalculationMethod();

// Calculate a frame
int mandelbrotCalculateFrame(
  double aStartX,
  double aStartY,
  double aScale,
  unsigned int* aFrameBuffer);

// Release the Mandelbrot resources
int mandelbrotRelease();

#endif

