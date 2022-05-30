#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash

# Fix to directly use nvm in this script:
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install node
nvm use node

echo
echo "Installation complete, npm and node should be available in new terminal sessions."