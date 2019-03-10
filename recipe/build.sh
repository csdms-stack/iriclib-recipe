#! /usr/bin/env bash

if [[ `uname -s` == 'Darwin' ]]; then
    export MACOSX_DEPLOYMENT_TARGET=""
fi

mkdir _build && cd _build
cmake .. \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release
make
if [[ `uname -s` == 'Linux' ]]; then
    ctest
fi
make install
