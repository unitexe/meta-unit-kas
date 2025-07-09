#!/bin/bash

# Usage: ./build-all.sh

# Make kas-container available.
source ~/.venv.yocto/bin/activate

# Use same download directory for everything.
export DL_DIR="/media/data/dev/yocto/unit/dl"

# whinlatter container images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/whinlatter/sstate/"

# pokyless (glibc)
export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/pokyless/arm64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR

kas-container build ../images/pokyless/arm64-container/app-container/whinlatter.yml
kas-container build ../images/pokyless/arm64-container/container-image-busybox/whinlatter.yml
kas-container build ../images/pokyless/arm64-container/container-image-rust-hello-world/whinlatter.yml
kas-container build ../images/pokyless/arm64-container/container-image-unitsrv/whinlatter.yml

deactivate
