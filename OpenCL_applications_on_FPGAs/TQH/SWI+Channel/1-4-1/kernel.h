#include <atomic>
#include <string>
#include "support/common.h"
using namespace std;

void host_insert_tasks(task_t *queue, int *data_queue, task_t *task_pool, int *data, int *num_written_tasks,
    int gpuQueueSize, int offset, int frame_size);
