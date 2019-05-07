# ~/.bash_profile should be super-simple and just load
# .profile and .bashrc (in that order)

if [ -f ~/.profile ]; then
    . ~/.profile
fi

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.env ]; then
    . ~/.env
fi
