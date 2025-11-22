#!/bin/bash

# Usage: ./build-all.sh

# Make kas-container available.
source ~/.venv.yocto/bin/activate

# Use same download directory for everything.
export DL_DIR="/media/data/dev/yocto/unit/dl"

# whinlatter images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/whinlatter/sstate/"

#export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/poky/qemuarm64/"
#export KAS_WORK_DIR=$KAS_BUILD_DIR
#kas-container build ../images/poky/qemuarm64/core-image-base/whinlatter.yml
#kas-container build ../images/poky/qemuarm64/core-image-unit/whinlatter.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
#kas-container build ../images/poky/olimex-imx8mp-evb/core-image-base/whinlatter.yml
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-unit/whinlatter.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/poky/radxa-zero-3e/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
#kas-container build ../images/poky/radxa-zero-3e/core-image-base/whinlatter.yml
kas-container build ../images/poky/radxa-zero-3e/core-image-unit/whinlatter.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/poky/raspberrypi3-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
#kas-container build ../images/poky/raspberrypi3-64/core-image-base/whinlatter.yml
kas-container build ../images/poky/raspberrypi3-64/core-image-unit/whinlatter.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/whinlatter/poky/raspberrypi5/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
#kas-container build ../images/poky/raspberrypi5/core-image-base/whinlatter.yml
kas-container build ../images/poky/raspberrypi5/core-image-unit/whinlatter.yml

deactivate
