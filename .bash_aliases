# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them in .bashrc directly
alias grep='rg'
alias fd='fdfind'
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias edit=$EDITOR

# some ls aliases
alias ll='ls -Flashp'
alias la='ls -A'
alias l='ls -CF'

# Directory movement
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Clipboard copy/paste
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
