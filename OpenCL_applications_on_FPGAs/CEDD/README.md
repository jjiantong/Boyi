## CEDD

<b>Canny Edge Detection</b> is a widely used edge detection algorithm in image processing. Multiple frames of a video stream are processed through four stages:
1. a Gaussian filter to remove noise;
2. a Sobel filter to obtain the intensity and direction of edge gradients;
3. non-maximum suppression to make edges thinner;
4. hysteresis to suppress weak edges not connected to strong ones.

This application is from Chai benchmarks. Please see [the original repo](https://github.com/chai-benchmarks/chai "Title") for more details.


