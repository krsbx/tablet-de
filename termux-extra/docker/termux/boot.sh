#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

ISO_PATH="$CURRENT_PATH/alpine.iso"
IMAGE_PATH="$CURRENT_PATH/alpine.qcow2"

echo "Booting Alpine Setup..."

qemu-system-x86_64 -m 512 -netdev user,id=n1,hostfwd=tcp::2222-:22 -device virtio-net,netdev=n1 -cdrom $ISO_PATH -nographic -drive file=$IMAGE_PATH,format=qcow2