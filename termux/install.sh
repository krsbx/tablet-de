#!/bin/sh

echo "Installing the necessary packages..."
echo "Installing wget, curl, git, and proot-distro"

pkg install wget curl git proot-distro -y

echo "Installation complete!"