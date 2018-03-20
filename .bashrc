# Environment configuration
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export EDITOR=vim

# Customise shell
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\n\[\e[33m\]\W\[\e[m\] \[\e[37m\]\$\[\e[m\] '

# Set vim-mode
set -o vi

# Open directory in OS X Finder
finder() {
  open -a Finder $1
}

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Helpers
eval "$(hub alias -s)"
eval "$(thefuck --alias)"

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
# Start fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Node.js
export NODE_ENV=development
export NVM_DIR="$HOME/.nvm"
# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Load nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Python
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# PostgreSQL
export PGDATA=/usr/local/var/postgres

# DevOps
export ANSIBLE_COW_SELECTION=random
export TF_LOG=TRACE
export PACKER_LOG=1

# Canvas
export PKG_CONFIG_PATH=/usr/local/bin/pkg-config:/opt/X11/lib/pkgconfig

# fasd
eval "$(fasd --init auto)"
