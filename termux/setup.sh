#!/bin/sh

# Setup Termux bin so it can load any script in it
"$(pwd)/bin.sh"

# Setup distro comands
"$(pwd)/distro.sh"

# Install necessary packages
"$(pwd)/install.sh"

# Install ubuntu
"$(pwd)/ubuntu.sh"

if [ -n "$ZSH_VERSION" ]; then
   source $HOME/.zshrc
   echo "Successfully sourced .zshrc"
elif [ -n "$BASH_VERSION" ]; then
   source $HOME/.bashrc
   echo "Successfully sourced .bashrc"
else
   echo "Please source .zshrc or .bashrc"
fi
