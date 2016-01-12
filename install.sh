#!/bin/bash

# prerequis:
# sudo softwareupdate -i -a
# xcode-select --install

sudo -v

# set zsh
chsh -s $(which zsh)

# Install homebrew
sh ./brew.sh


# ohMyZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo rm ~/.zshrc
ln -s ~/.dotfiles/zsh/.zshrc ~/
sudo rm -rf ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh/custom ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh/.aliases ~/.aliases


# Install Tools / Apps 
sh ./stuff.sh


# Sublime Text 3
sudo rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/.dotfiles/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cp ~/.dotfiles/sublime/Package\ Control.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/

# nvm
source $(brew --prefix nvm)/nvm.sh
nvm install stable
nvm alias default stable


# MySQL
# https://gist.github.com/GabLeRoux/5766354
