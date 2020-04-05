# Set default editor to neovim
export EDITOR="nvim"

# Configure Homebrew in your ~/.profile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# Add Snap binaries to PATH
export PATH="$PATH:/snap/bin"

# Add Dart binaries to PATH
export PATH="$PATH:/usr/lib/dart/bin:$HOME/.pub-cache/bin"

# Node.js - Add NPM binaries to path
export NVM_DIR="$HOME/.nvm"
export NODE_VERSION=$(echo $(node -v) | sed "s/v//g")
export NODE_ENV="development"
export PATH="${PATH}:${HOMEBREW_CELLAR}/node/${NODE_VERSION}/bin"

# Add Rust binaries to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Setup GOPATH and add binaries to PATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Add Python binaries to PATH
export PATH="$HOME/.poetry/bin:$PATH"
