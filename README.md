# dotfiles

## Macos
```
sudo softwareupdate -i -a
xcode-select --install
```


## Homebrew
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install coreutils
brew install tree
brew install git
brew install imagemagick
brew install nvm
brew cleanup
```


## NVM
```
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install stable
nvm alias default stable
```


## ZSH
```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

ln -s ~/.dotfiles/zsh/.zshrc ~/
rm -rf ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh/custom ~/.oh-my-zsh/custom
ln -s ~/.dotfiles/zsh/.aliases ~/.aliases
```


## SublimeText
```
rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -s ~/.dotfiles/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
```


## Git
```
ln -s ~/.dotfiles/git/.gitconfig ~/
ln -s ~/.dotfiles/git/.gitignore_global ~/
```
