#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

echo "Installing redis..."

pkg install redis -y

# Copying necessary files
if [ ! -s "$HOME/bin" ]; then
  echo "Creating bin folder in \$HOME..."
  mkdir -p $HOME/bin
fi

echo "Copying redis scripts to $HOME/bin..."

cp $CURRENT_PATH/redis-{start,stop} $HOME/bin
chmod +x $HOME/bin/redis-{start,stop}

echo "Redis installed successfully"