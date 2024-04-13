#!/bin/sh

echo "Installing the necessary packages..."
echo "Installing wget, curl, git, python, and proot-distro"

pkg install wget curl git python proot-distro -y

echo "Installation complete!"