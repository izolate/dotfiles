for file in "$HOME/.zshrc.d/"*.zsh; do
	[[ -r "$file" ]] && source "$file"
done

# Prompt last
export PS1="%B%n%b %K%1~%k %# "

