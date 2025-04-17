# Load thefuck
command -v thefuck &> /dev/null && eval "$(thefuck --alias)"

# The next lines update PATH for the Google Cloud SDK
[[ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]] && source "$HOME/google-cloud-sdk/path.zsh.inc"
[[ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]] && source "$HOME/google-cloud-sdk/completion.zsh.inc"
# eval "$(fasd --init auto)"

# Enable fzf
[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND="fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,tmp} --type f"

# NVM
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# NVM and Node.js
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# Optional: expose Node version-specific bin path if needed
if command -v node &>/dev/null; then
  export NODE_VERSION=$(node -v | sed 's/^v//')
  export PATH="${PATH}:${HOMEBREW_CELLAR:-/opt/homebrew/Cellar}/node/${NODE_VERSION}/bin"
fi
