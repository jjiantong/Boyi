#include <iostream>
#include <map>
#include <string>

#include "AOCLUtils/aocl_utils.h"

using namespace aocl_utils;

using namespace std;

struct Timer {

	map<string, double> startTime;
    map<string, double> stopTime;
    map<string, double> time;

    void start(string name) {
        if(!time.count(name)) {
            time[name] = 0.0;
        }
		startTime[name] = getCurrentTimestamp();
    }

    void stop(string name) {
        stopTime[name] = getCurrentTimestamp();
		time[name] += stopTime[name] - startTime[name];

    }

	void print(string name, int REP) { 
		printf("\n%s Time (ms): %0.3f", name.c_str(), time[name] * 1e3 / REP); 
	}
};
