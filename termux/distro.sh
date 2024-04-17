#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

if [ ! -s "$HOME/bin/distro" ]; then
  echo "Copying distro to $HOME/bin..."
  cp $CURRENT_PATH/distro $HOME/bin/distro
  chmod +x $HOME/bin/distro
else
  echo "Distro command already exists in \$HOME/bin"
  echo "Skipping..."
fi

