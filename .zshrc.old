# Identify the OS type
KERNEL_NAME=$(uname -s)

# Enable Vim mode
bindkey -v

# Enable reverse command search
bindkey "^R" history-incremental-pattern-search-backward

# Add ~/bin to PATH
export PATH="$HOME/bin:$PATH"

# Mac-specific settings
if [[ $KERNEL_NAME = "Darwin" ]]; then
    # Load homebrew
    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Use GNU coreutils instead of BSD
    PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

    # Use openssl instead of libressl
    export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

    # Convert uuidgen output to lowercase
    alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
fi

# Linux-specific settings
if [[ $KERNEL_NAME = "Linux" ]]; then
    # Load Homebrew for Linux
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    # Add Snap binaries to PATH
    export PATH="$PATH:/snap/bin"
fi

# Create a fancy prompt that shows current working directory
export PS1="%B%n%b %K%1~%k %# "

# Set Neovim as default editor
export EDITOR="nvim"

# Configure GOPATH
export GOPATH=$HOME/go
# Add Go binaries to PATH
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add Dart binaries to PATH
export PATH="$PATH:/usr/lib/dart/bin:$HOME/.pub-cache/bin"

# Configure Node env
export NODE_ENV="development"
export NODE_VERSION=$(echo $(node -v) | sed "s/v//g")
export NVM_DIR="$HOME/.nvm"
# Add Node binaries to PATH
export PATH="${PATH}:${HOMEBREW_CELLAR}/node/${NODE_VERSION}/bin"
# Load NVM and NVM bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Add Rust binaries to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Setup GOPATH and add binaries to PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add Python binaries to PATH
export PATH="$HOME/.poetry/bin:$PATH"

# Import common aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Load thefuck
eval $(thefuck --alias)

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# Docker config
export DOCKER_DEFAULT_PLATFORM=linux/arm64

# Add postgresql@13 to $PATH
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Initialize fasd
eval "$(fasd --init auto)"

# Enable fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,tmp} --type f"

# Why do I need this?
export PATH="/opt/homebrew/opt/go@1.19/bin:$PATH"

# Add ritten scripts to $PATH
export PATH="$HOME/dev/ritten/valinor/__SCRIPTS__:$PATH"
export PATH="/Users/yosh/dev/ritten/valinor/backend/scripts:$PATH"
export PATH="$HOME/.rittencli:$PATH"

# Functions
function frg {
  result=$(rg --ignore-case --color=always --line-number --no-heading "$@" |
    fzf --ansi \
        --color 'hl:-1:underline,hl+:-1:underline:reverse' \
        --delimiter ':' \
        --preview "bat --color=always {1} --theme='Solarized (light)' --highlight-line {2}" \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3')
  file=${result%%:*}
  linenumber=$(echo "${result}" | cut -d: -f2)
  if [[ -n "$file" ]]; then
    $EDITOR +"${linenumber}" "$file"
  fi
}

