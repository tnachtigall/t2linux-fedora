#!/usr/bin/bash

git clone --recurse-submodules https://github.com/tnachtigall/t2linux-fedora.git t2-fedora
cd t2-fedora/kernel || exit
export sourcedir="$COPR_RESULTDIR"
./kernel.sh
