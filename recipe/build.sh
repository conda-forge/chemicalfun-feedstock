#!/bin/bash

set -u
ferr(){
    echo "$@"
    exit 1
}

mkdir -p build
cd build

# Configure step
cmake -DCMAKE_BUILD_TYPE=Release \
      -DCHEMICALFUN_BUILD_TESTS=ON \
      ..
# Build step
make  -j${CPU_COUNT}
make install
#python -c "import chemicalfun"
