#include "kernel.h"
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <thread>
#include <vector>
#include <algorithm>

//----------------------------------------------------------------------------
// CPU: Host enqueue task
//----------------------------------------------------------------------------
void host_insert_tasks(task_t *queue, int *data_queue, task_t *task_pool, int *data, int *num_written_tasks,
    int gpuQueueSize, int offset, int frame_size) {
#if PRINT
    printf("Inserting Tasks in Queue...\t");
#endif
    // Insert tasks in queue
    memcpy(&queue[0], &task_pool[offset], gpuQueueSize * sizeof(task_t));

    // Insert data in data_queue
    memcpy(&data_queue[0], &data[offset * frame_size], gpuQueueSize * frame_size * sizeof(int));

    *num_written_tasks += gpuQueueSize;
}

