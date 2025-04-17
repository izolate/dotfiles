# Go
export GOPATH="$HOME/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# Dart
export PATH="$PATH:/usr/lib/dart/bin:$HOME/.pub-cache/bin"

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Python
export PATH="$HOME/.poetry/bin:$PATH"

# Docker
export DOCKER_DEFAULT_PLATFORM=linux/arm64

# PostgreSQL
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Ritten Scripts
[[ -d "$HOME/dev/ritten" ]] && {
	export PATH="$HOME/dev/ritten/valinor/__SCRIPTS__:$PATH"
	export PATH="$HOME/dev/ritten/valinor/backend/scripts:$PATH"
	export PATH="$HOME/.rittencli:$PATH"
}
