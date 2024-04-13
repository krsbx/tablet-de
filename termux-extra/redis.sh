#!/bin/sh

BASHRC=$(cat "$HOME/.bashrc" 2>/dev/null || echo "")
ZSHRC=$(cat "$HOME/.zshrc" 2>/dev/null || echo "")
REDIS_START="alias redis-start=\"redis-server > /dev/null 2>&1 &\""
REDIS_STOP="alias redis-stop=\"pgrep redis-server | xargs kill -9\""

echo "Installing redis..."

pkg install redis -y

if ! echo "$BASHRC" | grep -q "$REDIS_START"; then
  echo "Adding redis-start to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $REDIS_START >> $HOME/.bashrc
  echo "redis-start successfully added to .bashrc"
fi

if ! echo "$BASHRC" | grep -q "$REDIS_STOP"; then
  echo "Adding redis-stop to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $REDIS_STOP >> $HOME/.bashrc
  echo "redis-stop successfully added to .bashrc"
fi

if ! echo "$ZSHRC" | grep -q "$REDIS_START"; then
  echo "Adding redis-start to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $REDIS_START >> $HOME/.zshrc
  echo "redis-start successfully added to .zshrc"
fi

if ! echo "$ZSHRC" | grep -q "$REDIS_STOP"; then
  echo "Adding redis-stop to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $REDIS_STOP >> $HOME/.zshrc
  echo "redis-stop successfully added to .zshrc"
fi

echo "redis successfully installed"