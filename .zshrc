# First check if the OS is Linux.
if [[ "$(uname)" = "Linux" ]]; then
  LINUX_OS=1
fi

# Enable Vim mode
bindkey -v

# Enable reverse command search
bindkey "^R" history-incremental-pattern-search-backward

# Create a fancy prompt that shows current working directory
export PS1="
%B%n%b[%K%1~%k]%# "

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

# Linux
if [[ -n "${LINUX_OS-}" ]]; then
    # Load Homebrew
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
