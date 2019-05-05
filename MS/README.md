# MS

## Description
The <b>Mandelbrot set</b> is the set of complex numbers <i>c</i> for which the function $f_c(z)=z^2+c$ does not diverge when iterated from $z=0$, i.e., for which $f_c(f_c(0))$, etc., remains bounded in absolute value. Mandelbrot set images may be created by sampling the complex numbers and testing.

The default value of width and height of the window are 800 and  400 respectively, and they can be changed.

This application is a demo provide by Intel FPGA. Please see [Intel FPGA OpenCL Design Examples page](https://www.intel.com/content/www/us/en/programmable/products/design-software/embedded-software-developers/opencl/support.html "Title") for more details.


## Packet Structure

Path|Description
-|-
`MS_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`ms.sln` | Microsoft Visual Studio project for host program
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bin\` | host program, AOCX files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`device\` | top-level OpenCL kernel files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`host\` | host source files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`inc\` | host include files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`src\` | host source files
`common\` | common configuration implementations
`NDRange\` | source code of multiple NDRange implementations
`SWI\` | source code of multiple single work-item (SWI) implementations
`SWI+Channel\` | source code of multiple SWI+Channel implementations
`MS_data.xlsx` | experimental data about resource and performance

## Usage
We'd recommend you to compile and run the project in `MS_test\`, which implements `baseline` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\` or `SWI+Channel\` to try whatever implementations you interested.

**NOTE**: please make sure to build the OpenCL+FPGA environment before.
1. See [Intel FPGA SDK for OpenCL Pro Edition: Getting Started Guide](https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807309901.html#mwh1391807297091 "Title") for details of installing Intel OpenCL SDK. 
2. Refer to vendor's manual for detailed steps of installing FPGA board and driver. The step of installation can be different for different FPGA board and operating system. For Terasic DE5a-Net board, please refer to [DE5a-Net OpenCL Manual](http://download.terasic.com/downloads/cd-rom/de5a-net/linux_BSP/I2/DE5ANET_I2_OpenCL_16.1.pdf "Title")


#### Compiling the OpenCL Kernel
To compile the OpenCL kernel, run:
> aoc device\baseline.cl -o bin\baseline.aocx --board <i>\<board></i>

where <i>\<board></i> matches the board you want to target. If you are unsure of the boards available, use the following command to list available boards:
> aoc --list-boards

#### Compiling the Host Program
To compile the host program, build the project in Visual Studio 2010 (or later). The compiled host program will be located at `bin\host`.

#### Running the Host Program
Before running the host program, you should have compiled the OpenCL kernel and the host program. To launch the host program, use <i>Ctrl + F5</i> or the following command:
> set PATH=../extlibs/bin;%PATH%\
> bin\host
