#!/bin/bash

# Usage: ./build-all.sh

# Make kas-container available.
source ~/.venv.yocto/bin/activate

# Use same download directory for everything.
export DL_DIR="/media/data/dev/yocto/unit/dl"

# Scarthgap images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/scarthgap/sstate/"

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/qemuarm64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm64/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/qemuarm/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/qemux86-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemux86-64/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/olinuxino-a20-emmc/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olinuxino-a20-emmc/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/radxa-zero-3e/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/radxa-zero-3e/core-image-base/scarthgap.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/scarthgap/poky/raspberrypi3-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/raspberrypi3-64/core-image-base/scarthgap.yml

# Styhead images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/styhead/sstate/"

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/qemuarm64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm64/core-image-base/styhead.yml
kas-container build ../images/poky/qemuarm64/core-image-unit/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/qemuarm/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm/core-image-base/styhead.yml
kas-container build ../images/poky/qemuarm/core-image-unit/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/qemux86-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemux86-64/core-image-base/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-base/styhead.yml
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-unit/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/olinuxino-a20-emmc/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olinuxino-a20-emmc/core-image-base/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/radxa-zero-3e/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/radxa-zero-3e/core-image-base/styhead.yml
kas-container build ../images/poky/radxa-zero-3e/core-image-unit/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/poky/raspberrypi3-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/raspberrypi3-64/core-image-base/styhead.yml
kas-container build ../images/poky/raspberrypi3-64/core-image-unit/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/pokyless/amd64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/pokyless/amd64-container/app-container/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/pokyless/arm64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/pokyless/arm64-container/app-container/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/pokyless/armv7-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/pokyless/armv7-container/app-container/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/rocky/amd64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/rocky/amd64-container/app-container/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/rocky/arm64-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/rocky/arm64-container/app-container/styhead.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/styhead/rocky/armv7-container/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/rocky/armv7-container/app-container/styhead.yml

# Walnascar images.
export SSTATE_DIR="/media/data/dev/yocto/unit/build/walnascar/sstate/"

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/qemuarm64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm64/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/qemuarm/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemuarm/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/qemux86-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/qemux86-64/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olimex-imx8mp-evb/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/olinuxino-a20-emmc/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/olinuxino-a20-emmc/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/radxa-zero-3e/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/radxa-zero-3e/core-image-base/walnascar.yml

export KAS_BUILD_DIR="/media/data/dev/yocto/unit/build/walnascar/poky/raspberrypi3-64/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
kas-container build ../images/poky/raspberrypi3-64/core-image-base/walnascar.yml

deactivate
