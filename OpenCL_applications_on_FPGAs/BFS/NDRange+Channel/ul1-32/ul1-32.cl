#define _OPENCL_COMPILER_

#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable
#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable

#include "support/common.h"

	channel int chan;

// OpenCL kernel ------------------------------------------------------------------------------------------
__kernel  
void BFS_in(__global int *restrict q1, __global int *n_t) {

    const int gtid = get_global_id(0);
    const int SIZE = get_global_size(0);
    int n_t_local  = n_t[0];

	for(int i = gtid; i < n_t_local; i += SIZE)
		write_channel_altera(chan, q1[i]);
}


__kernel  
void BFS_0(__global Node *restrict graph_nodes_av, __global Edge *restrict graph_edges_av, __global int *restrict cost,
    __global int *restrict color, __global int *restrict q2, __global int *n_t,
    __global int *head, __global int *tail,
    __global int *overflow, __global int *iter, __local int *tail_bin, __local int *l_q2, __local int *shift,
    __local int *base) {

    const int tid     = get_local_id(0);
    const int gtid    = get_global_id(0);
    const int MAXWG   = get_num_groups(0);
    const int WG_SIZE = get_local_size(0);

    int iter_local = atomic_add(&iter[0], 0);

    int n_t_local = n_t[0];

    if(tid == 0) {
        // Reset queue
        *tail_bin = 0;
    }

    // Fetch frontier elements from the queue
    if(tid == 0)
        *base = atomic_add(&head[0], WG_SIZE);
    barrier(CLK_LOCAL_MEM_FENCE);

    int my_base = *base;
    while(my_base < n_t_local) {
        if(my_base + tid < n_t_local && *overflow == 0) {
            // Visit a node from the current frontier
            int pid = read_channel_altera(chan);
            //////////////// Visit node ///////////////////////////
            atomic_xchg(&cost[pid], iter_local); // Node visited
            Node cur_node;
            cur_node.x = graph_nodes_av[pid].x;
            cur_node.y = graph_nodes_av[pid].y;
            // For each outgoing edge
            for(int i = cur_node.x; i < cur_node.y + cur_node.x; i++) {
                int id        = graph_edges_av[i].x;
                int old_color = atomic_max(&color[id], BLACK);
                if(old_color < BLACK) {
                    // Push to the queue
                    int tail_index = atomic_add(tail_bin, 1);
                    if(tail_index >= W_QUEUE_SIZE) {
                        *overflow = 1;
                    } else
                        l_q2[tail_index] = id;
                }
            }
        }
        if(tid == 0)
            *base = atomic_add(&head[0], WG_SIZE); // Fetch more frontier elements from the queue
        barrier(CLK_LOCAL_MEM_FENCE);
        my_base = *base;
    }
    /////////////////////////////////////////////////////////
    // Compute size of the output and allocate space in the global queue
    if(tid == 0) {
        *shift = atomic_add(&tail[0], *tail_bin);
    }
    barrier(CLK_LOCAL_MEM_FENCE);
    ///////////////////// CONCATENATE INTO GLOBAL MEMORY /////////////////////
    int local_shift = tid;
    #pragma unroll 32
    while(local_shift < *tail_bin) {
        q2[*shift + local_shift] = l_q2[local_shift];
        // Multiple threads are copying elements at the same time, so we shift by multiple elements for next iteration
        local_shift += WG_SIZE;
    }
    //////////////////////////////////////////////////////////////////////////

    if(gtid == 0) {
        atomic_add(&iter[0], 1);
    }
}
