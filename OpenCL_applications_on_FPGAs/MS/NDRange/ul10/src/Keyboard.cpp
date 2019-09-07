#include "Keyboard.h"

// Whether we run demo mode or not
extern unsigned theDemoRunning;

// Callback functions to handle keyboard button state changes
int keyboardPressEvent(SDL_Event* anEvent)
{
  // Cast event to appropriate type
  SDL_KeyboardEvent* aKeyboardEvent = (SDL_KeyboardEvent*)anEvent;

  // Handle key states
  switch(aKeyboardEvent->keysym.sym)
  {
    // Program exit case
    case SDLK_q:
      // Exit event pushed to the queue when requested
      SDL_Event anExitEvent;
      anExitEvent.type = SDL_QUIT;
      SDL_PushEvent(&anExitEvent);
      break;

    // Switch between hardware and software calculation
    case SDLK_h:
      mandelbrotSwitchCalculationMethod();
      break;

    // Switch demo mode on and off
    case SDLK_d:
        theDemoRunning = !theDemoRunning;
      break;

    // Reset to original view location
    case SDLK_r:
      mandelbrotWindowResetView();
      break;

    // Default case does nothing
    default:
      break;
  }

  // return success
  return 0;
}
