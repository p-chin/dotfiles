echo zshrc called
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Path to your oh-my-zsh configuration.

#######
#alias#
#######

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

#w3m4alc
function alc() {
  if [ $# != 0 ]; then
    w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa" | \less +38
  else
    echo 'usage: alc word'
  fi
}

function uni2 {
 /Applications/Unityy/Unity.app -projectPath $1
}

#function erotube(){
#    ruby /Users/pchin/erotube/erotube.rb
#    open -a "/Applications/Google Chrome.app" /Users/pchin/erotube/erotube.html
#}
#
#function oppai(){
#    echo "oppai"
#}
