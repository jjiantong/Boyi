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

## Usage

You can find the source code, resource consumption details and absolute performance numbers under each application folder.

**NOTE**: please refer to README under each application folder for more information and usage.



## PART TWO: LLVM based automatic tool