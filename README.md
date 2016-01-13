# dotfiles

zsh, sublime, apache, tools and config files for OSX

## Installation for new machine

First step:
```
sudo softwareupdate -i -a
xcode-select --install
```

Pre-install:
```
cd ~/
git clone https://github.com/mikaelh94/dotfiles.git .dotfiles
cd .dotfiles
sh preinstall.sh
```

Close osx Terminal and open iTerm2, then:
```
sh install.sh
```
