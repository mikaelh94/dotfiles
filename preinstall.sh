#!/bin/bash

install_homebrew () {
  which -s brew
  if [[ $? != 0 ]]; then
    echo "• Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
    brew update

    export HOMEBREW_CASK_OPTS="--appdir=/Applications"

    brew tap caskroom/cask
    brew tap caskroom/versions
    brew cask install iterm2
  fi
}

install_zsh () {
  echo "start"
  if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "• You already have Oh My Zsh installed."
  else
    echo "• Installing oh-my-zsh"
    chsh -s $(which zsh)
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  fi
}

install_homebrew
install_zsh