#!/bin/bash

install_homebrew () {
  which -s brew
  if [[ $? != 0 ]]; then
    echo "• Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew tap homebrew/dupes
    brew tap homebrew/versions
    brew tap homebrew/php

    brew install coreutils
    brew install tree
    brew install git
    brew install imagemagick
    brew install nvm

    brew cleanup
  fi
}

install_sublime () {
  if [ -d "$HOME/Library/Application\ Support/Sublime\ Text\ 3" ]; then
    echo "• Installing Sublime Text 3 config"
    rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
    ln -s ~/.dotfiles/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
    cp ~/.dotfiles/sublime/Package\ Control.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/
  else
    echo "• Sublime Text 3 not found"
  fi
}

install_node () {
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
  nvm install stable
  nvm alias default stable
}

install_zsh () {
  if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "• You already have Oh My Zsh installed."
  else
    echo "• Installing oh-my-zsh"
    sudo chsh -s /bin/zsh $USER
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    ln -s ~/.dotfiles/zsh/.zshrc ~/
    rm -rf ~/.oh-my-zsh/custom
    ln -s ~/.dotfiles/zsh/custom ~/.oh-my-zsh/custom
    ln -s ~/.dotfiles/zsh/.aliases ~/.aliases
  fi
}

install_homebrew
install_sublime
install_node
install_zsh
echo "please restart shell"


# MySQL
# https://gist.github.com/GabLeRoux/5766354
# https://gist.github.com/pwenzel/f06419631bd172331281
# https://getgrav.org/blog/mac-os-x-apache-setup-multiple-php-versions
# https://gist.github.com/alefi87/bc778a7ca918d27821a1
# https://medium.com/@raureif/os-x-yosemite-how-to-set-up-apache-mysql-and-php-with-homebrew-4bc236d7d9fa#.llae79mio
