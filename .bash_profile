# Environment configuration
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=$(which vim)

# Customise shell
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\n\[\e[33m\]\W\[\e[m\] \[\e[37m\]\$\[\e[m\] '

# Import aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Import secrets
if [ -f ~/.bash_secrets ]; then
  . ~/.bash_secrets
fi

# Open directory in OS X Finder
finder() {
  open -a Finder $1
}

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Helpers
eval "$(hub alias -s)"
eval "$(thefuck --alias)"

# Node.js
export NODE_ENV=development
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Python
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=$(which python)
#export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
#export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
#source /usr/local/bin/virtualenvwrapper.sh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Java
export PATH=$PATH:/usr/local/bin/activator

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
