
// Define the color black as 0
#define BLACK 0x00000000

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

// Mandelbrot set: zn+1 = zn^2 + c;

typedef struct {
	int x;
	int y;
	int iter;
} Channel_type;	
	
	channel unsigned int chan_in;
	channel Channel_type chan_out[4];

__kernel 
void in ( const unsigned int maxIterations,
		__constant const unsigned int *restrict colorLUT)
{
	for (int i = 0; i < maxIterations; i ++){
		write_channel_altera(chan_in, colorLUT[i]);
	}
}

__kernel 
void hw_mandelbrot_frame_0( const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations)
{	
	for (int windowPosX = 0; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 320; windowPosY ++){
		
			const double stepPosX = x0 + (windowPosX * stepSize);
			const double stepPosY = y0 - (windowPosY * stepSize);

			double x = 0.0;
			double y = 0.0;
			double xSqr = 0.0;
			double ySqr = 0.0;
			unsigned int iterations = 0;

			while (	xSqr + ySqr < 4.0 && iterations < maxIterations){
				xSqr = x*x;
				ySqr = y*y;

				y = 2*x*y + stepPosY;
				x = xSqr - ySqr + stepPosX;

				iterations++;
			}

			Channel_type c;
			c.x    = windowPosX;
			c.y    = windowPosY;
			c.iter = iterations;
			write_channel_altera(chan_out[0], c);

		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_1( const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations)
{	
	for (int windowPosX = 0; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 640; windowPosY ++){
		
			const double stepPosX = x0 + (windowPosX * stepSize);
			const double stepPosY = y0 - (windowPosY * stepSize);

			double x = 0.0;
			double y = 0.0;
			double xSqr = 0.0;
			double ySqr = 0.0;
			unsigned int iterations = 0;

			while (	xSqr + ySqr < 4.0 && iterations < maxIterations){
				xSqr = x*x;
				ySqr = y*y;

				y = 2*x*y + stepPosY;
				x = xSqr - ySqr + stepPosX;

				iterations++;
			}

			Channel_type c;
			c.x    = windowPosX;
			c.y    = windowPosY;
			c.iter = iterations;
			write_channel_altera(chan_out[1], c);

		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_2( const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations)
{	
	for (int windowPosX = 400; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 320; windowPosY ++){
		
			const double stepPosX = x0 + (windowPosX * stepSize);
			const double stepPosY = y0 - (windowPosY * stepSize);

			double x = 0.0;
			double y = 0.0;
			double xSqr = 0.0;
			double ySqr = 0.0;
			unsigned int iterations = 0;

			while (	xSqr + ySqr < 4.0 && iterations < maxIterations){
				xSqr = x*x;
				ySqr = y*y;

				y = 2*x*y + stepPosY;
				x = xSqr - ySqr + stepPosX;

				iterations++;
			}

			Channel_type c;
			c.x    = windowPosX;
			c.y    = windowPosY;
			c.iter = iterations;
			write_channel_altera(chan_out[2], c);

		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_3( const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations)
{	
	for (int windowPosX = 400; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 640; windowPosY ++){
		
			const double stepPosX = x0 + (windowPosX * stepSize);
			const double stepPosY = y0 - (windowPosY * stepSize);

			double x = 0.0;
			double y = 0.0;
			double xSqr = 0.0;
			double ySqr = 0.0;
			unsigned int iterations = 0;

			while (	xSqr + ySqr < 4.0 && iterations < maxIterations){
				xSqr = x*x;
				ySqr = y*y;

				y = 2*x*y + stepPosY;
				x = xSqr - ySqr + stepPosX;

				iterations++;
			}

			Channel_type c;
			c.x    = windowPosX;
			c.y    = windowPosY;
			c.iter = iterations;
			write_channel_altera(chan_out[3], c);

		}	
	}	
}

__kernel 
void out (  const unsigned int maxIterations,
			__global unsigned int *restrict framebuffer,
			const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan_in);

	for (int i = 0; i < 128000; i ++){
		
		Channel_type c0 = read_channel_altera(chan_out[0]);
		int x0    = c0.x;
		int y0    = c0.y;
		int iter0 = c0.iter;

		Channel_type c1 = read_channel_altera(chan_out[1]);
		int x1    = c1.x;
		int y1    = c1.y;
		int iter1 = c1.iter;

		Channel_type c2 = read_channel_altera(chan_out[2]);
		int x2    = c2.x;
		int y2    = c2.y;
		int iter2 = c2.iter;

		Channel_type c3 = read_channel_altera(chan_out[3]);
		int x3    = c3.x;
		int y3    = c3.y;
		int iter3 = c3.iter;

		framebuffer[windowWidth * y0 + x0] = (iter0 == maxIterations)? BLACK : pcolor[iter0];
		framebuffer[windowWidth * y1 + x1] = (iter1 == maxIterations)? BLACK : pcolor[iter1];
		framebuffer[windowWidth * y2 + x2] = (iter2 == maxIterations)? BLACK : pcolor[iter2];
		framebuffer[windowWidth * y3 + x3] = (iter3 == maxIterations)? BLACK : pcolor[iter3];
	}
}
