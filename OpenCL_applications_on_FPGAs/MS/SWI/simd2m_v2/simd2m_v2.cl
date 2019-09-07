
// Define the color black as 0
#define BLACK 0x00000000

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

// Mandelbrot set: zn+1 = zn^2 + c;

__kernel 

void hw_mandelbrot_frame (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							__constant const unsigned int *restrict colorLUT,
							const unsigned int windowWidth)
{
	for (int windowPosX = 0; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 640; windowPosY ++){
		
			int xx0 = windowPosX * 2;
			int xx1 = windowPosX * 2 + 1;

			const double stepPosX0 = x0 + (xx0 * stepSize);
			const double stepPosX1 = x0 + (xx1 * stepSize);
			const double stepPosY  = y0 - (windowPosY * stepSize);

			double x_0 = 0.0;
			double x_1 = 0.0;
			double y_0 = 0.0;
			double y_1 = 0.0;
			double xSqr0 = 0.0;
			double xSqr1 = 0.0;
			double ySqr0 = 0.0;
			double ySqr1 = 0.0;
			unsigned int iterations0 = 0;
			unsigned int iterations1 = 0;

			while (	xSqr0 + ySqr0 < 4.0 && iterations0 < maxIterations){
				xSqr0 = x_0*x_0;
				ySqr0 = y_0*y_0;

				y_0 = 2*x_0*y_0 + stepPosY;
				x_0 = xSqr0 - ySqr0 + stepPosX0;

				iterations0++;
			}

			while (	xSqr1 + ySqr1 < 4.0 && iterations1 < maxIterations){
				xSqr1 = x_1*x_1;
				ySqr1 = y_1*y_1;

				y_1 = 2*x_1*y_1 + stepPosY;
				x_1 = xSqr1 - ySqr1 + stepPosX1;

				iterations1++;
			}

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + xx0] = (iterations0 == maxIterations)? BLACK : colorLUT[iterations0];
			framebuffer[windowWidth * windowPosY + xx1] = (iterations1 == maxIterations)? BLACK : colorLUT[iterations1];
		}	
	}	
}
