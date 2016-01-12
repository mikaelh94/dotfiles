# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Theme
ZSH_THEME="mika"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z sublime)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php/php5.6.2/bin"
export ANDROID_HOME=/usr/local/opt/android-sdk
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Alias
source $HOME/.aliases

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Brew Casq
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
