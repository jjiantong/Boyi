## HSTI

<b>Histograms</b> count the number of observations in an input that fall into disjoint bins. They have widely used in many applications, notably in image processing and pattern recognition. This program calculates a histogram of the pixel values in a monochrome image.

The input folder contains one image from [Van Hateren's natural image database](http://www.kyb.tuebingen.mpg.de/?id=227 "Title"). Image pixels are 12-bit depth. Thus, for calculation of the <i>B</i>-bin histogram of an image, the corresponding histogram bin is computed as ((pixel * <i>B</i>) >> 12). 

You can use any monochrome images. The read input part (in main.cpp) might need to be changed accordingly. If image pixels are <i>b</i>-bit depth and the histogram contains <i>B</i> bins, the histogram bin will be computed as ((pixel * <i>B</i>) >> b).

This application is from Chai benchmarks. Please see [the original repo](https://github.com/chai-benchmarks/chai "Title") for more details.

