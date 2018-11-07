#ifndef COORDINATES_H
#define COORDINATES_H

// Define the number of example coordinates
#define NUMBER_OF_COORDINATES 12

// A structure containing origin positions and a scale for a Mandelbrot frame
struct coordinates {
  double x;
  double y;
  double scale;
};

// Location and scales of a set of positions to run through when
// the program is run in "demo mode"
const struct coordinates theDemoLocations[NUMBER_OF_COORDINATES] =
{
  {-2.0, 1.15, 0.0035},
  {-0.7302032, -0.2080147, 0.0000002},
  {-2.0, 1.15, 0.0035},
  {-0.1072627, -0.9120693, 0.0000001},
  {-2.0, 1.15, 0.0035},
  {-1.7868170, 0.0030061, 0.0000002},
  {-2.0, 1.15, 0.0035},
  {0.3382314, -0.4132462, 0.0000002},
  {-2.0, 1.15, 0.0035},
  {-0.708210525513, -0.244819641113, 0.000000381470},
  {-2.0, 1.15, 0.0035},
  {-0.793605729416, -0.149912039936, 0.000000000373},
};

// Location and scales of a set of positions for test mode.
const struct coordinates theTestLocations[] =
{
  {-0.7302032, -0.2080147, 0.004},
  {-2.0, 1.05, 0.0035},
  {0.1, 0.9, 0.003},
  {-0.79, 0.1, 0.00008}
};
const unsigned NUM_TEST_LOCATIONS = sizeof(theTestLocations)/sizeof(theTestLocations[0]);

#endif

