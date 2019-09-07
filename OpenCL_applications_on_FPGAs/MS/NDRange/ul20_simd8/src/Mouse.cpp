#include "Mouse.h"

// mouse button state maps (0 = UP, 1 = DOWN)
static char theMouseButtonState[3];

// Window size
extern unsigned int theWidth;
extern unsigned int theHeight;

// Global position variables
extern double theCurrentX;
extern double theCurrentY;
extern double theCurrentScale;

extern double theTargetX;
extern double theTargetY;
extern double theTargetScale;

// Callback functions to handle mouse button state changes
int mousePressEvent(SDL_Event* anEvent)
{
  // Cast event to appropriate type
  SDL_MouseButtonEvent* aMouseButtonEvent = (SDL_MouseButtonEvent*)anEvent;

  // Modify button states
  theMouseButtonState[aMouseButtonEvent->button] = 1;

  // If the Left button is pressed, pan
  if(theMouseButtonState[SDL_BUTTON_LEFT])
  {
    theTargetX = theCurrentX + (((double)aMouseButtonEvent->x)*theCurrentScale - ((double)(theWidth/2))*theTargetScale);
    theTargetY = theCurrentY - (((double)aMouseButtonEvent->y)*theCurrentScale - ((double)(theHeight/2))*theTargetScale);
  }

  // If the Right button is pressed, zoom in
  else if(theMouseButtonState[SDL_BUTTON_RIGHT])
  {
    theTargetScale = theCurrentScale * 0.7;
    theTargetX = theCurrentX + (((double)aMouseButtonEvent->x)*theCurrentScale - ((double)(theWidth/2))*theTargetScale);
    theTargetY = theCurrentY - (((double)aMouseButtonEvent->y)*theCurrentScale - ((double)(theHeight/2))*theTargetScale);
  }

  // If the Middle button is pressed, zoom out
  else if(theMouseButtonState[SDL_BUTTON_MIDDLE])
  {
    theTargetScale = theCurrentScale * 1.4286;
    theTargetX = theCurrentX + (((double)aMouseButtonEvent->x)*theCurrentScale - ((double)(theWidth/2))*theTargetScale);
    theTargetY = theCurrentY - (((double)aMouseButtonEvent->y)*theCurrentScale - ((double)(theHeight/2))*theTargetScale);
  }

  // return success
  return 0;
}

int mouseReleaseEvent(SDL_Event* anEvent)
{
  // Cast event to appropriate type
  SDL_MouseButtonEvent* aMouseButtonEvent = (SDL_MouseButtonEvent*)anEvent;

  // Modify button states
  theMouseButtonState[aMouseButtonEvent->button] = 0;

  // return success
  return 0;
}
