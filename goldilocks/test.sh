g++ benchs/bench.cpp src/* -lbenchmark -lomp -lpthread -lgmp  -std=c++17 -Wall -pthread -fopenmp -mavx2 -L$(find /usr/lib/llvm-* -name "libomp.so" | sed 's/libomp.so//') -O3 -o bench
# RUN:
./bench --benchmark_filter=NTT_BENCH
./bench --benchmark_filter=ADD_AVX2_BENCH
./bench --benchmark_filter=MUL_AVX2_BENCH

# Build commands AVX512:
g++ benchs/bench.cpp src/* -lbenchmark -lomp -lpthread -lgmp  -std=c++17 -Wall -pthread -fopenmp -mavx2 -mavx512f -L$(find /usr/lib/llvm-* -name "libomp.so" | sed 's/libomp.so//') -O3 -o bench_avx512 -D__AVX512__
./bench_avx512 --benchmark_filter=ADD_AVX512_BENCH
./bench_avx512 --benchmark_filter=MUL_AVX512_BENCH
