# Identify the OS type
KERNEL_NAME=$(uname -s)

# Enable Vim mode
bindkey -v

# Enable reverse command search
bindkey "^R" history-incremental-pattern-search-backward

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

# Mac-specific settings
if [[ $KERNEL_NAME = "Darwin" ]]; then
    # Use GNU coreutils instead of BSD
    PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

    # Use openssl instead of libressl
    export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
fi

# Linux-specific settings
if [[ $KERNEL_NAME = "Linux" ]]; then
    # Load Homebrew for Linux
    eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    # Add Snap binaries to PATH
    export PATH="$PATH:/snap/bin"
fi

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

#
