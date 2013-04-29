# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export PATH=/opt/local/bin:/opt/local/sbin:$PATH

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
PATH=~/.plenv/shims:$PATH

# Customize to your needs...
#export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#PATH=~/.rbenv/shims:$PATH



