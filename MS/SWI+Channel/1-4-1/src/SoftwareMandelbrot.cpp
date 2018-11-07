#include "SoftwareMandelbrot.h"

using namespace aocl_utils;

// Global frame sizes
extern unsigned int theWidth;
extern unsigned int theHeight;

// Local Data
static int* theSoftColorTable = 0;
static unsigned int theSoftColorTableSize = 0;

// compute the mandel value of a pixel
inline unsigned int mandel_pixel(
  double x0,
  double y0,
  unsigned int maxIterations)
{
  // variables for the calculation
  double x = 0.0;
  double y = 0.0;
  double xSqr = 0.0;
  double ySqr = 0.0;
  unsigned int iterations = 0;

  // perform up to the maximum number of iterations to solve
  // the current work-item's position in the image
  while (xSqr + ySqr < 4.0 &&
      iterations < maxIterations)
  {
    // perform the current iteration
    xSqr = x*x;
    ySqr = y*y;

    y = 2*x*y + y0;
    x = xSqr - ySqr + x0;

    // increment iteration count
    iterations++;
  }

  // return the iteration count
  return iterations;
}

// Initialize by doing nothing
int softwareInitialize()
{
  return 0;
}

// Set the color table
int softwareSetColorTable(
  unsigned int* aColorTable,
  unsigned int aColorTableSize)
{
  // If the color table is a different size than before
  if(theSoftColorTableSize != aColorTableSize)
  {
    // Set new table size
    theSoftColorTableSize = aColorTableSize;

    // Free old table
    if(theSoftColorTable) alignedFree(theSoftColorTable);

    // Create new table
    theSoftColorTable = (int*)alignedMalloc(theSoftColorTableSize * sizeof(int));
  }

  // Write the color table data to the device on the current queue
  memcpy(theSoftColorTable, aColorTable, theSoftColorTableSize*sizeof(int));

  // Return success
  return 0;
}

// Use the cpu to calculate a frame
int softwareCalculateFrame(
  double aStartX,
  double aStartY,
  double aScale,
  unsigned int* aFrameBuffer)
{
  // temporary pointer and index variables
  unsigned int * fb_ptr = aFrameBuffer;
  unsigned int j, k, pixel;

  // window position variables
  double x = aStartX;
  double y = aStartY;
  double cur_x, cur_y;
  double cur_step_size = aScale;

  // for each pixel in the y dimension window
  for (j = 0, cur_y = y; j < theHeight; j++, cur_y -= cur_step_size)
  {
    // for each pixel in the x dimension of the window
    for (cur_x = x, k = 0; k < theWidth; k++, cur_x += cur_step_size)
    {
      // set the value of the pixel in the window
      pixel = mandel_pixel(cur_x, cur_y, theSoftColorTableSize);
      if (pixel == theSoftColorTableSize)
        *fb_ptr++ = 0x0;
      else
        *fb_ptr++ = theSoftColorTable[pixel];
    }
  }

  //return success
  return 0;
}

// Release by doing nothing
int softwareRelease()
{
  return 0;
}
