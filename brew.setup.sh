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

# Brew Casks
brew cask install kitty
brew tap homebrew/cask-fonts
brew cask install font-monoid
brew cask install visual-studio-code

# Remove outdated versions from the cellar
brew cleanup