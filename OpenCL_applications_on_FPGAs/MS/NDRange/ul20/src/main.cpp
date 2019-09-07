#include <iostream>
#include <sstream>
#include <iomanip>
#include <cstdlib>
#include <algorithm>
#include <math.h>

using std::stringstream;
using std::cout;
using std::endl;
using std::ends;
using std::min;

#include "AOCLUtils/aocl_utils.h"
#include "MandelbrotWindow.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;

// Define the size of the color table, which doubles as 
// the maximum number of iterations when computing the 
// Mandelbrot frame
unsigned COLOR_TABLE_SIZE = 2000;

// Controls if motion across all large distances are smoothed or
// are instant.
bool smoothMotion = true;

// Use the display?
bool useDisplay = true;

// Test mode.
bool testMode = false;

// Test frame count.
unsigned testFrameCount = 100;

// Test frame dump, every Nth frame.
unsigned testFrameDump = 25;

extern SDL_Surface* theFrames[2];
extern unsigned theDemoRunning;

///////////////////////////////////////////////////////////////////////////////
// Create default color table
///////////////////////////////////////////////////////////////////////////////
void colorTableInit() 
{
  // Allocate temporary space for the color table
  unsigned int* aColorTable = (unsigned int*)alignedMalloc(COLOR_TABLE_SIZE * sizeof(unsigned int));
  
  // Initialize color table values
  for(unsigned int i = 0; i < COLOR_TABLE_SIZE; i++)
  {
    if (i < 64) 
      aColorTable[i] = SDL_MapRGB(theFrames[0]->format, min(5*i+20,255u), 0, 0);

    else if (i < 128)
      aColorTable[i] = SDL_MapRGB(theFrames[0]->format, 255, 2*i, 0);

    else if (i < 512)
      aColorTable[i] = SDL_MapRGB(theFrames[0]->format, min((int)(0.25*i),255), min((int)(0.25*i),255), 0);

    else if (i < 768)
      aColorTable[i] = SDL_MapRGB(theFrames[0]->format, min((int)(0.25*i),255), min((int)(0.25*i),255), 0);

    else
      aColorTable[i] = SDL_MapRGB(theFrames[0]->format, min((int)(0.10*i),255), min((int)(0.10*i),255), 0);
  }

  // Set the color table
  mandelbrotSetColorTable(aColorTable, COLOR_TABLE_SIZE);

  // Free temporary table
  alignedFree(aColorTable);
}


///////////////////////////////////////////////////////////////////////////////
// Main program
///////////////////////////////////////////////////////////////////////////////
int main(int argc, char **argv)
{
  // Process options.
  Options options(argc, argv);

  unsigned width = 800;
  unsigned height = 640;

  if(options.has("w")) {
    width = options.get<unsigned>("w");
  }
  if(options.has("h")) {
    height = options.get<unsigned>("h");
  }
  if(options.has("c")) {
    COLOR_TABLE_SIZE = options.get<unsigned>("c");
  }
  if(options.has("nosmooth")) {
    smoothMotion = false;
  }
  if(options.has("display")) {
    useDisplay = options.get<bool>("display");
  }

  testMode = options.get<bool>("test");
  if(testMode) {
    if(options.has("test-frames")) {
      testFrameCount = options.get<unsigned>("test-frames");
    }
    if(options.has("test-dump")) {
      testFrameDump = options.get<unsigned>("test-dump");
    }
  }

  // Initialize the SDL Utils with a window size
  mandelbrotWindowInitialize( width, height );

  // Print program usage every time for user
  //printUsage();

  // Create and set the color table
  colorTableInit();

  // Run the program main loop
  mandelbrotWindowMainLoop();
  
  // Finish
  mandelbrotWindowRelease();

  return 0;
}
