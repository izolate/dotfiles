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

# Node.js
export NODE_ENV=development
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Python
export PYTHONDONTWRITEBYTECODE=1
eval "$(pyenv init -)"

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

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# Modified version where you can press
#   - CTRL-O to open with `open` command,
#   - CTRL-E or Enter key to open with the $EDITOR
fo() {
  local out file key
  IFS=$'\n' out=($(fzf-tmux --query="$1" --exit-0 --expect=ctrl-o,ctrl-e))
  key=$(head -1 <<< "$out")
  file=$(head -2 <<< "$out" | tail -1)
  if [ -n "$file" ]; then
    [ "$key" = ctrl-o ] && open "$file" || ${EDITOR:-vim} "$file"
  fi
}

# fuzzy grep open via ag
vg() {
  local file

  file="$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1 " +" $2}')"

  if [[ -n $file ]]
  then
     vim $file
  fi
}
