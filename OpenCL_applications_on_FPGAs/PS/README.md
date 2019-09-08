## PS

<b>Prefix Sum</b> is a useful building block for many parallel algorithms including sorting and building data structures. This operation takes a binary associative operator ⊕, and an array of <i>n</i> elements
```
    [a0, a1, ... , an-1]
```
and returns the array
```
    [a0, (a0 ⊕ a1), ... , (a0 ⊕ a1 ⊕ ... ⊕ an-1)]
```

The input file simply contains some random integers between 0 and 20. The default value of <i>in_size</i> is 512 * 512, and it can be changed (based on <i>n_work_items</i> and <i>n_work_groups</i>).

This application is a demo provide by Nvidia. Please see [Parallel Prefix Sum (Scan) with CUDA](https://developer.nvidia.com/gpugems/GPUGems3/gpugems3_ch39.html "Title") for more details.

