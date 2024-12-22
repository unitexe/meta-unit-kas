# meta-unit-kas
A collection of kas configuration files.

## Getting Started
Create virtual python environment.
```bash
python -m venv ~/.venv.yocto
```

Activate virtual python environment kas was added to.
```bash
source ~/.venv.yocto/bin/activate
```

Clone kas repository.
```bash
cd ~/dev/src && git clone https://github.com/siemens/kas.git
```

Install kas to virtual python enviroment.
```bash
pip3 install .
```

Create build directory.
```bash
mkdir -p /home/$(whoami)/dev/yocto/unit/build/scarthgap/poky/olimex-imx8mp-evb
```

Setup kas environment variables based on the release, distro & machine you would like to target.
```bash
export KAS_BUILD_DIR="/home/$(whoami)/dev/yocto/unit/build/scarthgap/poky/olimex-imx8mp-evb/"
export KAS_WORK_DIR=$KAS_BUILD_DIR
export SSTATE_DIR="/home/$(whoami)/dev/yocto/unit/build/scarthgap/sstate/"
export DL_DIR="/home/$(whoami)/dev/yocto/unit/dl"
```

Build using `kas-container`.
```bash
kas-container build ~/dev/src/meta-unit-kas/images/poky/olimex-imx8mp-evb/core-image-base/scarthgap.yml
```

After build finishes, create boot media.
```bash
cd $KAS_BUILD_DIR && sudo bmaptool copy --bmap tmp/deploy/images/olimex-imx8mp-evb/core-image-base-olimex-imx8mp-evb.rootfs.wic.bmap tmp/deploy/images/olimex-imx8mp-evb/core-image-base-olimex-imx8mp-evb.rootfs.wic.gz /dev/mmcblk0
```

Now you can run on the target.
