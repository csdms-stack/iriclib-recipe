#! /usr/bin/env bash

export MACOSX_DEPLOYMENT_TARGET=""

mkdir _build && cd _build
cmake .. \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release
make
if [[ `uname -s` == 'Linux' ]]; then
    ctest
fi
make install
