#!/bin/sh

BASHRC=$(cat "$HOME/.bashrc" 2>/dev/null || echo "")
ZSHRC=$(cat "$HOME/.zshrc" 2>/dev/null || echo "")
PG_START="alias pgstart=\"pg_ctl start -D \$PREFIX/var/lib/postgresql > /dev/null 2>&1 &\""
PG_STOP="alias pgstop=\"pg_ctl stop -D \$PREFIX/var/lib/postgresql > /dev/null 2>&1 &\""

echo "Installing postgresql..."

pkg install postgresql -y

echo "Creating postgresql skeleton"

if [ ! -d "$PREFIX/var/lib/postgresql" ]; then
    mkdir -p $PREFIX/var/lib/postgresql
    initdb $PREFIX/var/lib/postgresql
fi

if ! echo "$BASHRC" | grep -q "$PG_START"; then
  echo "Adding pgstart to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $PG_START >> $HOME/.bashrc
  echo "pgstart successfully added to .bashrc"
fi

if ! echo "$BASHRC" | grep -q "$PG_STOP"; then
  echo "Adding pgstop to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $PG_STOP >> $HOME/.bashrc
  echo "pgstop successfully added to .bashrc"
fi

if ! echo "$ZSHRC" | grep -q "$PG_START"; then
  echo "Adding pgstart to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $PG_START >> $HOME/.zshrc
  echo "pgstart successfully added to .zshrc"
fi

if ! echo "$ZSHRC" | grep -q "$PG_STOP"; then
  echo "Adding pgstop to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $PG_STOP >> $HOME/.zshrc
  echo "pgstop successfully added to .zshrc"
fi

echo "postgresql successfully installed"