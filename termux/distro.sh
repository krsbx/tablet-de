#!/bin/sh

if [ ! -s "$HOME/bin/distro" ]; then
  echo "Copying distro to $HOME/bin..."
  cp "$(pwd)/distro" $HOME/bin/distro
else
  echo "Distro command already exists in \$HOME/bin"
  echo "Skipping..."
fi

