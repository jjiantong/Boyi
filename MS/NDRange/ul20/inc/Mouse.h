#ifndef __MOUSE_H__
#define __MOUSE_H__

#include <math.h>
#include <stdio.h>
#include <stdint.h>
#include <SDL2/SDL.h>

#include "coordinates.h"
#include "Mandelbrot.h"

// Mouse event functions to handle button presses and position
int mousePressEvent(SDL_Event* anEvent);
int mouseReleaseEvent(SDL_Event* anEvent);

#endif

