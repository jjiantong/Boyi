#include "common.h"
#include <math.h>
#include <atomic>

inline int verify(std::atomic_int *h_cost, int num_of_nodes, const char *file_name) {
    // Compare to output file
    FILE *fpo = fopen(file_name, "r");
    if(!fpo) {
        printf("Error Reading output file\n");
        exit(EXIT_FAILURE);
    }
#if PRINT
    printf("Reading Output: %s\n", file_name);
#endif

    // the number of nodes in the output
    int num_of_nodes_o = 0;
    fscanf(fpo, "%d", &num_of_nodes_o);
    if(num_of_nodes != num_of_nodes_o) {
        printf("Number of nodes does not match the expected value\n");
        exit(EXIT_FAILURE);
    }

    // cost of nodes in the output
    for(int i = 0; i < num_of_nodes_o; i++) {
        int j, cost;
        fscanf(fpo, "%d %d", &j, &cost);
        if(i != j || h_cost[i].load() != cost) {
            printf("Computed node %d cost (%d != %d) does not match the expected value\n", i, h_cost[i].load(), cost);
            exit(EXIT_FAILURE);
        }
    }

    fclose(fpo);
    return 0;
}
