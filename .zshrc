# Created by newuser for 5.9
export PATH=$HOME/.local/bin:$PATH
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
source /home/datacuber/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"

alias ls="eza --group-directories-first --icons -x --hyperlink -a --show-symlinks --color=always"
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Home
bindkey '\e[H'  beginning-of-line
bindkey '\eOH'  beginning-of-line
# End
bindkey '\e[F'  end-of-line
bindkey '\eOF'  end-of-line
bindkey "^[[3~" delete-char

HISTFILE=~/.zsh_history

# Number of commands to save in memory (this session)
HISTSIZE=10000

# Number of commands to save in the history file
SAVEHIST=10000

# Useful options to improve history handling
setopt APPEND_HISTORY             # Append history instead of overwriting
setopt SHARE_HISTORY              # Share history between terminals
setopt INC_APPEND_HISTORY         # Add commands to history immediately
setopt HIST_IGNORE_DUPS           # Ignore duplicate commands
setopt HIST_IGNORE_ALL_DUPS       # Delete old recorded entry if new one is a duplicate
setopt HIST_REDUCE_BLANKS         # Remove superfluous blanks before recording entry
setopt HIST_VERIFY                # Don't execute immediately on history expansion
