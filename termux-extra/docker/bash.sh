#!/bin/sh

BASHRC=$(cat "$HOME/.bashrc" 2>/dev/null || echo "")
ZSHRC=$(cat "$HOME/.zshrc" 2>/dev/null || echo "")
DOCKER_HOST="export DOCKER_HOST=tcp://0.0.0.0:2375"

echo "Seting up docker host"

if echo "$BASHRC" | grep -q "$DOCKER_HOST"; then
  echo "\$DOCKER_HOST already added to .bashrc"
else
  echo "Adding \$DOCKER_HOST to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $DOCKER_HOST >> $HOME/.bashrc
  echo "\$DOCKER_HOST successfully added to .bashrc"
fi

if echo "$ZSHRC" | grep -q "$DOCKER_HOST"; then
  echo "\$DOCKER_HOST already added to .zshrc"
else
  echo "Adding \$DOCKER_HOST to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $DOCKER_HOST >> $HOME/.zshrc
  echo "\$DOCKER_HOST successfully added to .zshrc"
fi