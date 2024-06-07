#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

# Setup Termux bin so it can load any script in it
"$CURRENT_PATH/../termux/bin.sh"

# Install necessary packages
"$CURRENT_PATH/install.sh"

# Install NVM and install latest node LTS
"$CURRENT_PATH/nvm.sh"

# Setup code-server downloader and code-server runner
"$CURRENT_PATH/code-server.sh"

echo "Please source .zshrc or .bashrc"

echo "To confirm code-server installed properly, run 'which code-server'"
echo "If it's not found, please run 'code-updater' manually"