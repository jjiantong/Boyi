#include "Mandelbrot.h"

// Hardware or software
int theCalculationMethod = HARDWARE;

// Initialize the Mandelbrot functions
int mandelbrotInitialize()
{
  // Initialize the hardware and software frame calculators
  hardwareInitialize();
  //softwareInitialize();

  // Return success
  return 0;
}

// Set the color table
int mandelbrotSetColorTable(
  unsigned int* aColorTable,
  unsigned int aColorTableSize)

{
  // Set hardware and software color tables
  hardwareSetColorTable(aColorTable, aColorTableSize);
  //softwareSetColorTable(aColorTable, aColorTableSize);

  // Return success
  return 0;
}

// Swap States
int mandelbrotSwitchCalculationMethod()
{
  // XOR
  theCalculationMethod ^= 1;

  // Return success
  return 0;
}

// Calculate a frame
int mandelbrotCalculateFrame(
  double aStartX,
  double aStartY,
  double aScale,
  unsigned int* aFramebuffer)
{
  // Use either hardware or software to do the frame calculation
  if(theCalculationMethod == HARDWARE)
    return hardwareCalculateFrame(aStartX, aStartY, aScale, aFramebuffer);

  //else
    //return softwareCalculateFrame(aStartX, aStartY, aScale, aFramebuffer);

  // Return success
  return 0;
}

// Release the Mandelbrot resources
int mandelbrotRelease()
{
  hardwareRelease();
  //softwareRelease();

  // Return success
  return 0;
}

