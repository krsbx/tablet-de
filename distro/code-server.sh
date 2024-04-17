#!/bin/sh

CURRENT_PATH=$(realpath $0)
CURRENT_PATH=$(dirname $CURRENT_PATH)

echo "Copying code-server updater to \$HOME/bin"

cp $CURRENT_PATH/code-updater $HOME/bin/code-updater
chmod +x $HOME/bin/code-updater

echo "Copying code-server runner to \$HOME/bin"

cp $CURRENT_PATH/code $HOME/bin/code
chmod +x $HOME/bin/code

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo "Downloading latest code-server release"
node $HOME/bin/code-updater

echo "code-server successfully installed"
echo "You can start the server by running 'code' in your terminal"