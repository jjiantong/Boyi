
// Define the color black as 0
#define BLACK 0x00000000

// Mandelbrot set: zn+1 = zn^2 + c;

	
	channel unsigned int chan[16];

__kernel 
void in ( const unsigned int maxIterations,
		__constant const unsigned int *restrict colorLUT)
{
	for (int i = 0; i < maxIterations; i ++){
		write_channel_altera(chan[0], colorLUT[i]);
		write_channel_altera(chan[1], colorLUT[i]);
		write_channel_altera(chan[2], colorLUT[i]);
		write_channel_altera(chan[3], colorLUT[i]);
		write_channel_altera(chan[4], colorLUT[i]);
		write_channel_altera(chan[5], colorLUT[i]);
		write_channel_altera(chan[6], colorLUT[i]);
		write_channel_altera(chan[7], colorLUT[i]);
		write_channel_altera(chan[8], colorLUT[i]);
		write_channel_altera(chan[9], colorLUT[i]);
		write_channel_altera(chan[10], colorLUT[i]);
		write_channel_altera(chan[11], colorLUT[i]);
		write_channel_altera(chan[12], colorLUT[i]);
		write_channel_altera(chan[13], colorLUT[i]);
		write_channel_altera(chan[14], colorLUT[i]);
		write_channel_altera(chan[15], colorLUT[i]);
	}
}

__kernel 
void hw_mandelbrot_frame_0 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[0]);
	
	for (int windowPosX = 0; windowPosX < 200; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 160; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_1 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[1]);
	
	for (int windowPosX = 0; windowPosX < 200; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 480; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_2 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[2]);
	
	for (int windowPosX = 400; windowPosX < 600; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 160; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_3 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[3]);
	
	for (int windowPosX = 400; windowPosX < 600; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 480; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_4 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[4]);
	
	for (int windowPosX = 200; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 160; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_5 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[5]);
	
	for (int windowPosX = 200; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 480; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_6 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[6]);
	
	for (int windowPosX = 600; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 0; windowPosY < 160; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_7 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[7]);
	
	for (int windowPosX = 600; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 320; windowPosY < 480; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_8 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[8]);
	
	for (int windowPosX = 0; windowPosX < 200; windowPosX ++){
		for(int windowPosY = 160; windowPosY < 320; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_9 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[9]);
	
	for (int windowPosX = 0; windowPosX < 200; windowPosX ++){
		for(int windowPosY = 480; windowPosY < 640; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_10 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[10]);
	
	for (int windowPosX = 400; windowPosX < 600; windowPosX ++){
		for(int windowPosY = 160; windowPosY < 320; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_11 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[11]);
	
	for (int windowPosX = 400; windowPosX < 600; windowPosX ++){
		for(int windowPosY = 480; windowPosY < 640; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_12 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[12]);
	
	for (int windowPosX = 200; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 160; windowPosY < 320; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}


__kernel 
void hw_mandelbrot_frame_13 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[13]);
	
	for (int windowPosX = 200; windowPosX < 400; windowPosX ++){
		for(int windowPosY = 480; windowPosY < 640; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_14 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[14]);
	
	for (int windowPosX = 600; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 160; windowPosY < 320; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}

__kernel 
void hw_mandelbrot_frame_15 (
							const double x0,
							const double y0,
							const double stepSize,
							const unsigned int maxIterations,
							__global unsigned int *restrict framebuffer,
							const unsigned int windowWidth)
{
	unsigned int pcolor[2000];

	for (int i = 0; i < maxIterations; i++)
		pcolor[i] = read_channel_altera(chan[15]);
	
	for (int windowPosX = 600; windowPosX < 800; windowPosX ++){
		for(int windowPosY = 480; windowPosY < 640; windowPosY ++){
		
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

			// Output black if we never finished, and a color from the look up table otherwise
			framebuffer[windowWidth * windowPosY + windowPosX] = (iterations == maxIterations)? BLACK : pcolor[iterations];
		}	
	}	
}