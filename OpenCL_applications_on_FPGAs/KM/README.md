## KM

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



