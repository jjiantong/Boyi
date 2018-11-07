# RSCD

## Description
<b>Random Sample Consensus (RANSAC)</b> is an iterative method to estimate parameters of a mathematical model frm a set of input data using random sampling. Each iteration includes two main stages:
1. a model fitting stage using random samples of input
2. a evaluation stage measuring outlier counts and model errors

The input file contains a file with a list of flow vectors from a video frame 
with the format `(x, y, vx, vy)`. `(x, y)` is the tail of the vector, and `(vx, vy)` is the head.


## Software & Hardware Requirement

- Quartus Prime Design Software: 16.1 or later
- Intel FPGA SDK for OpenCL: 16.1 or later
- Intel FPGA Runtime Environment for OpenCL: 16.1 or later
- Board Support Package: 16.1-compatible
- Board Hardware
- Microsoft Visual Studio: 2010 or later


## Packet Structure

Path|Description
-|-
`RSCD_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`rscd.sln` | Microsoft Visual Studio project for host program
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bin\` | host program, AOCX files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`device\` | top-level OpenCL kernel files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`support\` | auxiliary modules
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`host\src\` | host source files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`support\` | auxiliary modules
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`input\` | input files
`common\` | common configuration implementations
`NDRange\` | source code of multiple NDRange implementations
`SWI\` | source code of multiple single work-item(SWI) implementations
`NDRange+Channel\` | source code of multiple NDRange+Channel implementations
`SWI+Channel\` | source code of multiple SWI+Channel implementations
`RSCD_data.xlsx` | experimental data about resource and performance

## Usage
We'd recommend you to compile and run the project in `RSCD_test\`, which implements `baseline` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\`, or `NDRange+Channel\` or `SWI+Channel\` to try whatever implementations you interested.

Note: please make sure to build the OpenCL+FPGA environment before.
See [Intel FPGA SDK for OpenCL Pro Edition: Getting Started Guide](https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807309901.html#mwh1391807297091 "Title") for more details.

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
