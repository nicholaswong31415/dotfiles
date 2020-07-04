#!/usr/bin/env bash

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# Make sure everything is up to date
brew update
brew upgrade

# Brew Formulae
brew install zsh-syntax-highlighting
brew install git

# Brew Casks
brew cask install alacritty

# Remove outdated versions from the cellar
brew cleanup
