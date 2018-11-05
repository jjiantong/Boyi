#ifndef _PARTITIONER_H_
#define _PARTITIONER_H_

#include <iostream>
#include <atomic>

// Partitioner definition -----------------------------------------------------

typedef struct Partitioner {

    int n_tasks;
    int cut;
    int current;

} Partitioner;

// Partitioning strategies
#define STATIC_PARTITIONING 0
#define DYNAMIC_PARTITIONING 1

// Create a partitioner -------------------------------------------------------

inline Partitioner partitioner_create(int n_tasks, float alpha) {
    
	Partitioner p;
    p.n_tasks = n_tasks;

    if(alpha >= 0.0 && alpha <= 1.0) {
        p.cut = p.n_tasks * alpha;
    } 
    return p;
}

// Partitioner iterators: first() ---------------------------------------------

inline int cpu_first(Partitioner *p) {

    p->current = p->thread_id;
    return p->current;
}

inline int gpu_first(Partitioner *p) {

    p->current = p->cut + get_group_id(0);
    return p->current;
}

// Partitioner iterators: more() ----------------------------------------------

inline bool cpu_more(const Partitioner *p) {

    return (p->current < p->cut);
}

inline bool gpu_more(const Partitioner *p) {
    return (p->current < p->n_tasks);
}

// Partitioner iterators: next() ----------------------------------------------

inline int cpu_next(Partitioner *p) {

    p->current = p->current + p->n_threads;
    return p->current;
}

inline int gpu_next(Partitioner *p) {

    p->current = p->current + get_num_groups(0);
    return p->current;
}


#endif