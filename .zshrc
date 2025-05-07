# Created by newuser for 5.9
export PATH=$HOME/.local/bin:$PATH
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
source /home/datacuber/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(zoxide init zsh)"

alias ls="eza --group-directories-first --icons -x --hyperlink -a --show-symlinks --color=always"
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
