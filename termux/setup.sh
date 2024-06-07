#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

# Setup Termux bin so it can load any script in it
"$CURRENT_PATH/bin.sh"

# Setup distro comands
"$CURRENT_PATH/distro.sh"

# Install necessary packages
"$CURRENT_PATH/install.sh"

# Install ubuntu
"$CURRENT_PATH/ubuntu.sh"

# Copying necessary files
"$CURRENT_PATH/copy.sh"

echo "Please source .zshrc or .bashrc"
