[[ $(uname -s) == "Darwin" ]] || return

# Use GNU Coreutils instead of BSD
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
# Use OpenSSL instead of LibreSSL
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"

# Why do I need this?
# export PATH="/opt/homebrew/opt/go@1.19/bin:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Convert uuidgen output to lowercase
alias uuidgen='uuidgen | tr "[:upper:]" "[:lower:]"'
