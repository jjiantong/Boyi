# TQH

## Description
This is a <b>histogram application</b> that is built on top of a <b>task queue system</b>, where the CPU reads and enqueues frames of a video sequence and the FPGA calculates a histogram of pixel brightness in each frame.


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
`TQH_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`tqh.sln` | Microsoft Visual Studio project for host program
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
`KM_data.xlsx` | experimental data about resource and performance

## Usage
We'd recommend you to compile and run the project in `TQH_test\`, which implements `baseline` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\`, or `NDRange+Channel\` or `SWI+Channel\` to try whatever implementations you interested.

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
