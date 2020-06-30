#!/bin/bash

# Symlink the files to home directory
for file in $( ls -A | grep -vE '\.setup*|\.git$|\.gitignore|.*.md|LICENSE' ) ; do
  ln -sv "$PWD/$file" "$HOME"
done

# If using MacOS then run the setup scripts to install tools and MacOS defaults
if [ $( echo "$OSTYPE" | grep 'darwin' ) ] ; then
  sh brew.setup.sh
  sh macos.setup.sh
fi
