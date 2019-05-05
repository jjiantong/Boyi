# KM

## Description
<b><i>k</i>-means clustering</b> is a method of vector quantization that is popular for cluster analysis in data mining. k-means clustering aims to partition <i>n</i> observations with <i>d</i> features into <i>k</i> clusters in which each observation belongs to the cluster with the nearest mean.

The input file simply contains some random numbers. We set <i>n</i> = 25600, <i>d</i> = 8, <i>k</i> =
128, and simply use these random generated data to test the performance. You can use any other input data, provided that the format is as follows:

```
    A0 B0 C0 D0 E0 F0 G0 H0
    A1 B1 C1 D1 E1 F1 G1 H1
    ......
```

Each tuple `(Ai, Bi, Ci, Di, Ei, Fi, Gi, Hi)` represents one observation with eight features.

This application is from Rodinia benchmarks. Please see [the original home page](https://rodinia.cs.virginia.edu/doku.php "Title") for more details.



## Packet Structure

Path|Description
-|-
`KM_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`KM.sln` | Microsoft Visual Studio project for host program
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bin\` | host program, AOCX files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`device\` | top-level OpenCL kernel files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`host\src\` | host source files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`input\` | input files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`output\` | output files
`common\` | common configuration implementations
`NDRange\` | source code of multiple NDRange implementations
`SWI\` | source code of multiple single work-item(SWI) implementations
`NDRange+Channel\` | source code of multiple NDRange+Channel implementations
`SWI+Channel\` | source code of multiple SWI+Channel implementations
`KM_data.xlsx` | experimental data about resource and performance

## Usage
We'd recommend you to compile and run the project in `KM_test\`, which implements `baseline` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\`, or `NDRange+Channel\` or `SWI+Channel\` to try whatever implementations you interested.

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
> bin\host
