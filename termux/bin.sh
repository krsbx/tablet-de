#!/bin/sh

BASHRC=$(cat "$HOME/.bashrc" 2>/dev/null || echo "")
ZSHRC=$(cat "$HOME/.zshrc" 2>/dev/null || echo "")
HEADER="# Add bin from \$HOME/bin"

if echo "$BASHRC" | grep -q "$HEADER"; then
  echo "\$HOME/bin already added to .bashrc"
  echo "Skipping..."
else
  echo "Adding \$HOME/bin to .bashrc..."
  echo "" >> $HOME/.bashrc
  echo $HEADER >> $HOME/.bashrc
  echo "if [ -s \"\$HOME/bin\" ] ; then" >> $HOME/.bashrc
  echo "  export PATH=\"\$PATH:\$HOME/bin\"" >> $HOME/.bashrc
  echo "fi" >> $HOME/.bashrc

  echo "\$HOME/bin successfully added to .bashrc"
fi

if echo "$ZSHRC" | grep -q "$HEADER"; then
  echo "\$HOME/bin already added to .zshrc"
  echo "Skipping..."
else
  echo "Adding \$HOME/bin to .zshrc..."
  echo "" >> $HOME/.zshrc
  echo $HEADER >> $HOME/.zshrc
  echo "if [ -s \"\$HOME/bin\" ] ; then" >> $HOME/.zshrc
  echo "  export PATH=\"\$PATH:\$HOME/bin\"" >> $HOME/.zshrc
  echo "fi" >> $HOME/.zshrc

  echo "\$HOME/bin successfully added to .zshrc"
fi


if [ ! -s "$HOME/bin" ]; then
  echo "Creating bin folder in \$HOME..."
  mkdir -p $HOME/bin
fi