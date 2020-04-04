#!/usr/bin/env bash

# Install Node Version Manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Reload .zshrc so we can use the nvm command
source ~/.zshrc

# Install latest version of node
nvm install node