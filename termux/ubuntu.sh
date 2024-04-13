#!/bin/sh

# Installing ubuntu distro
DISTROS=/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs

if [ -d "$DISTROS/ubuntu" ]; then
  echo "ubuntu already installed"
  echo "Skipping..."
else
  echo "Installing ubuntu..."
  proot-distro install ubuntu
  echo "ubuntu successfully installed"
fi