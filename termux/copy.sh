#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)
MAIN_PATH=$(dirname $CURRENT_PATH)

DISTROS=$PREFIX/var/lib/proot-distro/installed-rootfs

echo "Copying necessary files to Distro directory..."

# Removing old files
rm -rf $DISTROS/ubuntu/tablet-de > /dev/null 2>&1

# Copying new files
cp -r $MAIN_PATH $DISTROS/ubuntu/root

echo "Done!"