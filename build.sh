#!/bin/bash

make distclean || echo clean
./autogen.sh || echo done
CFLAGS="-O3 -funroll-loops -frename-registers -march=native -Wall" ./configure
make
strip -s unitus_cpuminer
