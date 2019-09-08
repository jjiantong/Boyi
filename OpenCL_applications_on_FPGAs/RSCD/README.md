## RSCD

<b>Random Sample Consensus (RANSAC)</b> is an iterative method to estimate parameters of a mathematical model frm a set of input data using random sampling. Each iteration includes two main stages:
1. a model fitting stage using random samples of input
2. a evaluation stage measuring outlier counts and model errors

The input file contains a file with a list of flow vectors from a video frame 
with the format `(x, y, vx, vy)`. `(x, y)` is the tail of the vector, and `(vx, vy)` is the head. The default value of <i>max_iter</i> is 2000, and it can be changed.


