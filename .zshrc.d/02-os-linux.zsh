[[ $(uname -s) == "Linux" ]] || return

# Load Homebrew for Linux
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Add Snap binaries to PATH
export PATH="$PATH:/snap/bin"

# Use MacOS-style clipboard copy & paste commands on linux
if [[ $(uname -s) == Linux ]]
then
  alias pbcopy="xclip -selection clipboard"
  alias pbpaste="xclip -selection clipboard -o"
fi
