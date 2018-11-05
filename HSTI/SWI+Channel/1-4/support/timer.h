//#include <sys/time.h>
#include <iostream>
#include <map>
#include <string>

#include "CL/opencl.h"
#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;

using namespace std;

struct Timer {

    //map<string, struct timeval> startTime;
    //map<string, struct timeval> stopTime;

	map<string, double> startTime;
    map<string, double> stopTime;
    map<string, double> time;

    void start(string name) {
        if(!time.count(name)) {
            time[name] = 0.0;
        }
        //gettimeofday(&startTime[name], NULL);
		startTime[name] = getCurrentTimestamp();
    }

    void stop(string name) {
        //gettimeofday(&stopTime[name], NULL);
        stopTime[name] = getCurrentTimestamp();
		//time[name] += (stopTime[name].tv_sec - startTime[name].tv_sec) * 1000000.0 +
        //              (stopTime[name].tv_usec - startTime[name].tv_usec);
		time[name] = stopTime[name] - startTime[name];

    }

		void print(string name, int REP) { 
			printf("\n%s Time (ms): %0.3f", name.c_str(), time[name] * 1e3 / REP); 
		}
};
