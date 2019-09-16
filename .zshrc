# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify

# Enable Vim mode
bindkey -v

# Enable reverse command search
bindkey "^R" history-incremental-pattern-search-backward

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yosh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Vim
export EDITOR='vim'

# Create a fancy prompt that shows current working directory
export PS1="
%B%n%b[%K%1~%k]%# "

# Import common aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
