# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim

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

#######
#alias#
#######

#w3m4alc
function alc() {
  if [ $# != 0 ]; then
    w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa" | \less +38
  else
    echo 'usage: alc word'
  fi
}

#function erotube(){
#    ruby /Users/pchin/erotube/erotube.rb
#    open -a "/Applications/Google Chrome.app" /Users/pchin/erotube/erotube.html
#}
#
#function oppai(){
#    echo "oppai"
#}
