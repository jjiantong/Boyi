## BFS

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


