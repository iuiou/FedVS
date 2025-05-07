#include <random>
#include <mutex>
#include <thread>
#include <cmath>
#include <limits>

const int localSearchOption = 2; // 1:do not prune  2:build clusters and evaluate
const int topKOption = 3; // 1:without candidates refinement 2:refine with binary search 3:refine with priority queue (our algorithm)
const bool recordAnswerComm = true;

const float FLOAT_INF = 1e12;

double optTopKTime = 0;
double optRefineTime = 0;

void padding(std::vector<unsigned char> &plainText) {
    if(plainText.size() % 16 != 0) {
        for(int c = plainText.size() % 16; c < 16; ++c) {
            plainText.emplace_back('\0');
        }
    }
    return;
}