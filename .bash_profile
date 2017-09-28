# Source .bashrc
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Source aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Source secrets
if [ -f ~/.bash_secrets ]; then
  . ~/.bash_secrets
fi
