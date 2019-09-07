#include "StopWatch.h"
#include "AOCLUtils/aocl_utils.h"
#include <stdlib.h>

// Set the start data of a stopwatch
void startTime(StopWatch* aStopWatch)
{
#ifdef _WIN32
    QueryPerformanceCounter(&(*aStopWatch).startCount);
    QueryPerformanceFrequency(&(*aStopWatch).frequency);
#else
    gettimeofday(&aStopWatch->startCount, NULL);
#endif
}

// Get the time elapsed since a stopwatch was started
double getElapsedTime(StopWatch* aStopWatch)
{
#ifdef _WIN32
  QueryPerformanceCounter(&(*aStopWatch).endCount);
  double endInMicroSec = (*aStopWatch).endCount.QuadPart * (1000000.0 /(*aStopWatch).frequency.QuadPart);
  double startInMicroSec = (*aStopWatch).startCount.QuadPart * (1000000.0 / (*aStopWatch).frequency.QuadPart);
  return (double)((endInMicroSec - startInMicroSec) / 1000000);
#else
  gettimeofday(&aStopWatch->endCount, NULL);
  return ((aStopWatch->endCount.tv_sec * 1000000.0) + aStopWatch->endCount.tv_usec - (aStopWatch->startCount.tv_sec * 1000000.0) + aStopWatch->startCount.tv_usec) / 1000000;
#endif
}
