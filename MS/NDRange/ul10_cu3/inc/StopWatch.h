#ifndef __STOP_WATCH_H__
#define __STOP_WATCH_H__

#ifdef _WIN32   // Windows system specific
#include <windows.h>

#else      // Unix based system specific
#include <sys/time.h>

#endif

// timing storage structure
struct StopWatch
{
#ifdef _WIN32
  LARGE_INTEGER frequency;
  LARGE_INTEGER startCount;
  LARGE_INTEGER endCount;

#else
  timeval startCount;
  timeval endCount;

#endif
};

// timing functions
void startTime(StopWatch* aStopWatch);
double getElapsedTime(StopWatch* aStopWatch);

#endif

