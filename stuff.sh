#!/bin/bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Tools
brew install coreutils
brew install tree
brew install git
brew install imagemagick
brew install nvm

# App
brew install caskroom/cask


brew cask install iterm2
brew cask install google-chrome
brew cask install spotify
brew cask install slack

brew cleanup