#!/bin/bash

# Symlink the files to home directory
for file in $( ls -A | grep -vE '\.setup*|\.git$|\.gitignore|.*.md' ) ; do
  ln -sv "$PWD/$file" "$HOME"
done

if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
  sh brew.setup.sh
  sh node.setup.sh
  sh macos.setup.sh
fi