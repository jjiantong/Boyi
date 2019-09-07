#ifndef HARDWARE_MANDELBROT_H
#define HARDWARE_MANDELBROT_H

#include <iostream>
#include <sstream>
#include <iomanip>
#include <cstdlib>
#include <assert.h>

#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

// Hardware Mandelbrot
int hardwareInitialize();

int hardwareSetColorTable(
  unsigned int* aColorTable,
  unsigned int aColorTableSize);

int hardwareCalculateFrame(
  double aStartX,
  double aStartY,
  double aScale,
  unsigned int* aFrameBuffer);

int hardwareRelease();

#endif

