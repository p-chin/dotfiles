echo zshenv called
export PATH=$HOME/bin:/usr/local/bin:$PATH
export EDITOR=vim

# Customize to your needs...
export PATH="$HOME/.plenv/bin:$PATH"
eval "$(plenv init -)"
PATH=~/.plenv/shims:$PATH

# Customize to your needs...
#export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
#PATH=~/.rbenv/shims:$PATH

