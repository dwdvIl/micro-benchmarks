#include <iostream>
#include <chrono>
//#pragma GCC optimize ("-O3") // Configure opt level
using namespace std;

void bench() {
    auto start = chrono::system_clock::now();

    long long number = 0;

    for(long long i = 0; i < 1000000000; i++) number++;

    int elapsed = (int) (chrono::system_clock::now() - start).count() / 1000 / 1000; // System time to int milliseconds

    cout << "With no optimizations:" << endl;
    cout << elapsed << endl;
    cout << number << endl;
}

int main (int argc, char const *argv[])
{
    bench();

    return 0;
}

// 400-500 ms in CompilerExplorer (no optimizations) - C++ x86-64 gcc 14.2
// ~550ms on my machine
// 0 ms with optimizations