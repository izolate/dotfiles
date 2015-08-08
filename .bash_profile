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

# Open directory in OS X Finder
finder() {
  open -a Finder $1
}

# Bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Node.js
export NODE_ENV=development
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# Python
export PYTHONDONTWRITEBYTECODE=1
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$(which python)
export VIRTUALENVWRAPPER_VIRTUALENV=$(which virtualenv)
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh

# Ansible
export ANSIBLE_COW_SELECTION=random
