#!/bin/bash

# Usage: ./build-all.sh

# Make kas-container available.
source ~/.venv.yocto/bin/activate

# Use same download directory for everything.
export DL_DIR="/media/data/dev/yocto/unit/dl"

# Walnascar images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/walnascar/sstate/"

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/qemuarm64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm64/core-image-base/walnascar.yml
kas-container build ../images/poky/qemuarm64/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/qemux86-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemux86-64/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-base/walnascar.yml
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/olinuxino-a20-emmc/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olinuxino-a20-emmc/core-image-base/walnascar.yml
kas-container build ../images/poky/olinuxino-a20-emmc/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/radxa-zero-3e/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/radxa-zero-3e/core-image-base/walnascar.yml
kas-container build ../images/poky/radxa-zero-3e/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/raspberrypi3-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/raspberrypi3-64/core-image-base/walnascar.yml
kas-container build ../images/poky/raspberrypi3-64/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/raspberrypi5/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/raspberrypi5/core-image-base/walnascar.yml
kas-container build ../images/poky/raspberrypi5/core-image-unit/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/pokyless/amd64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/pokyless/amd64-container/app-container/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/pokyless/arm64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/pokyless/arm64-container/app-container/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/rocky/amd64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/rocky/amd64-container/app-container/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/rocky/arm64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/rocky/arm64-container/app-container/walnascar.yml

deactivate
