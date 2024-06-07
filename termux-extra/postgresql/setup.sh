#!/bin/sh

echo "Installing postgresql..."

pkg install postgresql -y

echo "Creating postgresql skeleton"

if [ ! -d "$PREFIX/var/lib/postgresql" ]; then
    mkdir -p $PREFIX/var/lib/postgresql
    initdb $PREFIX/var/lib/postgresql
fi

# Copying necessary files
if [ ! -s "$HOME/bin" ]; then
  echo "Creating bin folder in \$HOME..."
  mkdir -p $HOME/bin
fi

echo "Copying postgresql scripts to $HOME/bin..."

cp $CURRENT_PATH/pg{start,stop} $HOME/bin
chmod +x $HOME/bin/pg{start,stop}

echo "Postgresql installed successfully"
