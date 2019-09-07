#ifndef __MANDELBROT_WINDOW_H_
#define __MANDELBROT_WINDOW_H__

#include <stdio.h>
//#include <SDL2/SDL.h>
#include <stdint.h>

#include "Mouse.h"
#include "Keyboard.h"
#include "StopWatch.h"
#include "Mandelbrot.h"

int mandelbrotWindowInitialize(unsigned int aWidth,
  unsigned int aHeight);
int mandelbrotWindowRelease();

int mandelbrotWindowResetView();

int mandelbrotWindowUpdate();

int mandelbrotWindowMainLoop();

#endif

