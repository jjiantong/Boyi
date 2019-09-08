# Boyi

A systematic framework for optimizing OpenCL applications on FPGAs

## Overview
This repository contains:
- PART ONE: 11 OpenCL applications on FPGAs
    - Source code of all the optimization combinations under four execution models
    - Detailed resource consumption and absolute performance numbers of our experiments
- PART TWO: an LLVM-based automatic tool to determine whether to use two emerging OpenCL features

This work explores the optimization combinations on FPGAs for four high-level execution models: NDRange kernel (*NDR*), Single work-item kernel (*SWI*), NDRange kernel+OpenCL channel (*NDR+C*), Single work-item kernel+OpenCL channel (*SWI+C*). 

And our goal is to assist OpenCL programmers to determine the most suitable execution model based on the presence or absence of three OpenCL patterns: Atomic Operation (*AO*), Multi-Pass Scheme (MPS) and Kernel-to-Kernel Communication (KKC).


The 11 OpenCL applications include:

Application|Description|Source
-|-|-
BFS | Breadth-First Search | Chai benchmarks
RSCD | RANSAC | Chai benchmarks
TQH | Task Queue System | Chai benchmarks
HSTI | Histogram | Chai benchmarks
SC | Stream Compaction | Chai benchmarks
PAD | Padding | Chai benchmarks
CEDD | Canny Edge Detection | Chai benchmarks
KM | K-Means | Rodinia benchmarks
MM | Matrix Multiplication | Intel OpenCL demos
MS | Mandelbrot Set | Intel OpenCL demos
PS | Prefix Sum | CUDA demos

For more information, you can refer to [Chai benchmarks](https://github.com/chai-benchmarks/chai "Title"), [Rodinia benchmarks](https://rodinia.cs.virginia.edu/doku.php "Title"), [Intel OpenCL demos](https://www.intel.com/content/www/us/en/programmable/products/design-software/embedded-software-developers/opencl/support.html "Title") and [CUDA demos](https://developer.nvidia.com/gpugems/GPUGems3/gpugems3_ch39.html "Title").



## PART ONE: OpenCL applications on FPGAs

### Software & Hardware Requirement

The evaluation of the work requires Intel Quartus Prime software (including OpenCL SDK for FPGA), its license, and FPGA hardware. The FPGA synthesis software and FPGA hardware used in this work are listed below:

- Quartus Prime Design Software 16.1
- Intel FPGA SDK for OpenCL 16.1
- Intel FPGA Runtime Environment for OpenCL: 16.1
- FPGA board support package (BSP) provided by [Terasic](https://www.terasic.com.tw/cgi-bin/page/archive.pl?Language=English&CategoryNo=231&No=970&PartNo=4 "Title")
- FPGA device: Terasic DE5a-Net board
- Operating system: Windows 7
- Host compiler: Microsoft Visual Studio 2010

### Packet Structure

(Take CEDD application as an example:)

Path|Description
-|-
`CEDD\` | OpenCL application
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`CEDD_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`cedd.sln` | Microsoft Visual Studio project for host program
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bin\` | host program, AOCX files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`device\` | top-level OpenCL kernel files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`host\src\` | host source files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`input\` | input files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`common\` | common configuration implementations
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`NDRange\` | source code of all the optimization combinations under NDRange execution model
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`SWI\` | source code of all the optimization combinations under single work-item(SWI) execution model
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`NDRange+Channel\` | source code of all the optimization combinations under NDRange+Channel execution model
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`SWI+Channel\` | source code of all the optimization combinations under SWI+Channel execution model
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`CEDD_data.xlsx` | Detailed resource consumption and absolute performance numbers

### Usage

(Take CEDD application as an example:)

We'd recommend you to compile and run the project in `CEDD_test\`, which implements `baseline.cl` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\`, or `NDRange+Channel\` or `SWI+Channel\` to try whatever implementations you interested.

**NOTE**: please make sure to build the OpenCL+FPGA environment before.
1. See [Intel FPGA SDK for OpenCL Pro Edition: Getting Started Guide](https://www.intel.com/content/www/us/en/programmable/documentation/mwh1391807309901.html#mwh1391807297091 "Title") for details of installing Intel OpenCL SDK. 
2. Refer to vendor's manual for detailed steps of installing FPGA board and driver. The step of installation can be different for different FPGA board and operating system. For Terasic DE5a-Net board, please refer to [DE5a-Net OpenCL Manual](http://download.terasic.com/downloads/cd-rom/de5a-net/linux_BSP/I2/DE5ANET_I2_OpenCL_16.1.pdf "Title")


#### Compiling the OpenCL Kernel
To compile the OpenCL kernel, run:
```
aoc device\baseline.cl -o bin\baseline.aocx --board <i>\<board></i>
```

where <i>\<board></i> matches the board you want to target. If you are unsure of the boards available, use the following command to list available boards:
```
aoc --list-boards
```

#### Compiling the Host Program
To compile the host program, build the project in Visual Studio 2010 (or later). The compiled host program will be located at `bin\host`.

#### Running the Host Program
Before running the host program, you should have compiled the OpenCL kernel and the host program. To launch the host program, use <i>Ctrl + F5</i> or the following command:
```
bin\host
```



## PART TWO: LLVM based automatic tool


### Software & Hardware Requirement

We use Ubuntu 14.04 and Clang 9.0.0. Please see [Getting Started with the LLVM System - Requirements](https://llvm.org/docs/GettingStarted.html#requirements "Title") to find detailed software and hardware requirements.


### Usage

Please refer to LLVM's documentations for details of configuring and compiling LLVM. An LLVM getting started guideline can be found [here](https://llvm.org/docs/GettingStarted.html "Title"). Or you can start to use our LLVM tool quickly following the steps below:

If you have already finished configuring the LLVM environment, please start with Step 3.

#### Step 1: Checking out the LLVM project
```
git clone https://github.com/llvm/llvm-project.git
```

#### Step 2:  Building LLVM and Clang
```
cd llvm-project
mkdir build
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
make
make install
```
Then you can try it out:
```
clang --version
```
You may get:
```
clang version 9.0.0 (https://github.com/llvm/llvm-project.git 75afc0105c089171f9d85d59038617fb222c38cd)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /usr/local/bin
```

#### Step 3: Using Boyi
- Move ```Boyi/LLVM_based_automatic_tool/app/``` folder and ```Boyi/LLVM_based_automatic_tool/run.sh``` file to the same directory as ```llvm-project``` folder.
- Replace ```llvm-project/llvm/lib/Transforms``` folder with ```Boyi/LLVM_based_automatic_tool/Transforms``` folder.
- Change directory to llvm-project/..
  ```
  cd llvm-project/..
  ```
- Run:
  ```
  /run.sh
  ```

