#! /usr/bin/env bash

if [[ `uname -s` == 'Darwin' ]]; then
    export MACOSX_DEPLOYMENT_TARGET=""
fi

mkdir _build && cd _build
cmake .. \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DHDF5_LIBRARY=$PREFIX/lib/libhdf5$SHLIB_EXT
make
ctest
make install
