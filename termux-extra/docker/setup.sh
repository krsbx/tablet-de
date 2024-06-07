#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

IMAGE_PATH="$CURRENT_PATH/alpine.qcow2"
ISO_PATH="$CURRENT_PATH/alpine.iso"

echo "Installing necessary packages..."

pkg install termux-root

pkg install wget qemu-system-x86-64-headless qemu-utils

echo "Downloading Alpine image..."

wget https://dl-cdn.alpinelinux.org/alpine/v3.20/releases/x86_64/alpine-virt-3.20.0-x86_64.iso -O $ISO_PATH

echo "Creating 20G Alpine Image..."

qemu-img create -f qcow2 $IMAGE_PATH 20G

"$CURRENT_PATH/bash.sh"

echo "Please read more detail about setting up Alpine on the README.md file"
