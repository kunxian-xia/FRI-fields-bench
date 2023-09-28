#!/bin/bash -e 
g++ benchs/bench.cpp src/* -lbenchmark -lomp -lpthread -lgmp  -std=c++17 -Wall -pthread -fopenmp -mavx2 -mavx512f -L$(find /usr/lib/llvm-* -name "libomp.so" | sed 's/libomp.so//') -O3 -o bench_avx512 -D__AVX512__
./bench_avx512 --benchmark_filter=CUBIC_ADD_AVX512
./bench_avx512 --benchmark_filter=CUBIC_MUL_AVX512

g++ benchs/bench.cpp src/* -lbenchmark -lomp -lpthread -lgmp  -std=c++17 -Wall -pthread -fopenmp -mavx2 -L$(find /usr/lib/llvm-* -name "libomp.so" | sed 's/libomp.so//') -O3 -o bench
./bench --benchmark_filter=CUBIC_ADD
./bench --benchmark_filter=CUBIC_MUL
