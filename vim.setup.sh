#!/bin/bash

# Install junegunn's vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Remember to reload .vimrc and run :PlugInstall inside vim to install plugins"
