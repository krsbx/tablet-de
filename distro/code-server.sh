#!/bin/sh

echo "Copying code-server updater to \$HOME/bin"

cp code-updater $HOME/bin/code-updater
chmod +x $HOME/bin/code-updater

echo "Copying code-server runner to \$HOME/bin"

cp code $HOME/bin/code
chmod +x $HOME/bin/code

echo "Downloading latest code-server release"
node $HOME/bin/code-updater

echo "code-server successfully installed"
echo "You can start the server by running 'code' in your terminal"