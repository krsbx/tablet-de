#!/bin/sh

# Setup Termux bin so it can load any script in it
"$(pwd)/../termux/bin.sh"

# Install NVM and install latest node LTS
"$(pwd)/nvm.sh"

# Setup code-server downloader and code-server runner
"$(pwd)/code-server.sh"