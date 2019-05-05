# OpenCL_applications_on_FPGAs

## Overview
This repository contains:
- Source code of 11 OpenCL applications (in four execution models)
- Resource consumption details and absolute performance numbers of our experiments on a Terasic DE5a-Net board with an Altera Arria 10 GX FPGA and 8GB 2-bank DDR3 device memory

This work explores the optimization combinations on FPGAs for four high-level execution models: NDRange kernel (*NDR*), Single work-item kernel (*SWI*), NDRange kernel+OpenCL channel (*NDR+C*), Single work-item kernel+OpenCL channel (*SWI+C*). 

And our goal is to determine the most suitable execution model based on the presence or absence of three OpenCL patterns: Atomic Operation (*AO*), Multi-Pass Scheme (MPS) and Kernel-to-Kernel Communication (KKC).

## Applications
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

## Software & Hardware Requirement

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
