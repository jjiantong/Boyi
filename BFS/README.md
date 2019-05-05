# BFS

## Description
<b>Breadth-First Search</b> is a well-known graph traversal algorithm. A queue-based version is used which starts at a single source node, and on each iteration, visits the neighbors of every node in the current frontier and enqueues previously unvisited neighbors in the next frontier.

The input folder contains two graphs from [the 9th DIMAC Implementation Challenge](http://www.dis.uniroma1.it/challenge9/download.shtml "Title"). You can use any input graph, provided that the format is as follows:

```
    (Beginning of the file)
    #Nodes #Edges Source_node

    A0 B0
    A1 B1
    ...

    C0 D0
    C1 D1
    ...
```

Each tuple `(Ai, Bi)` represents one node. Each tuple `(Cj, Dj)` represents one edge. Thus, the file contains the list of nodes, followed by the list of edges. `Ai` indicates the position where the edges of node <i>i</i> start in the list of edges. `Bi` means the number of edges of node <i>i</i>. `Cj` is the node where edge <i>j</i> terminates (i.e., the head of the edge). `Dj` is the cost of edge <i>j</i>.

This application is from Chai benchmarks. Please see [the original repo](https://github.com/chai-benchmarks/chai "Title") for more details.


## Packet Structure

Path|Description
-|-
`BFS_test\` | a test sample using baseline.cl(in  `NDRange\`)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bfs.sln` | Microsoft Visual Studio project for host program
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`bin\` | host program, AOCX files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`device\` | top-level OpenCL kernel files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`support\` | auxiliary modules
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`host\src\` | host source files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`support\` | auxiliary modules
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`input\` | input files
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`output\` | output files
`common\` | common configuration implementations
`NDRange\` | source code of multiple NDRange implementations
`SWI\` | source code of multiple single work-item(SWI) implementations
`NDRange+Channel\` | source code of multiple NDRange+Channel implementations
`SWI+Channel\` | source code of multiple SWI+Channel implementations
`BFS_data.xlsx` | experimental data about resource and performance

## Usage
We'd recommend you to compile and run the project in `BFS_test\`, which implements `baseline` in `NDRange\`, through the following steps. After running successfully, you can replace the related code with other code in `NDRange\`, or `SWI\`, or `NDRange+Channel\` or `SWI+Channel\` to try whatever implementations you interested.

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
