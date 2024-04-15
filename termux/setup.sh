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

if [ -n "$ZSH_VERSION" ]; then
   source $HOME/.zshrc
   echo "Successfully sourced .zshrc"
elif [ -n "$BASH_VERSION" ]; then
   source $HOME/.bashrc
   echo "Successfully sourced .bashrc"
else
   echo "Please source .zshrc or .bashrc"
fi
