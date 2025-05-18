echo "Uninstalling Firefox..."
sudo pacman -Rsn firefox

echo "Installing from AUR (Chrome, Wezterm, picom)..."
yay -S google-chrome wezterm picom visual-studio-code-bin xkblayout-state

echo "Installing from Pacman..."

sudo pacman -S xsel ttf-firacode-nerd blueman gnome-keyring flameshot zsh zoxide eza fzf bat thefuck spotify zoom tmux neovim kitty

echo "Installing Zed..."
curl -f https://zed.dev/install.sh | sh

echo "Installing Starship"
curl -sS https://starship.rs/install.sh | sh

echo "Installing uv..."
curl -LsSf https://astral.sh/uv/install.sh | sh

echo "Installing Zsh-Syntax-Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "Installing Zsh-Autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

echo "Installing TPM for tmux..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Setting up with ZSH..."
chsh -s $(which zsh)

# {
# echo 'export PATH=$HOME/.local/bin:$PATH'
# echo 'export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"'
# echo 'eval "$(starship init zsh)"'
# echo 'source /home/datacuber/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
# echo 'eval "$(zoxide init zsh)"'

# echo 'alias ls="eza --group-directories-first --icons -x --hyperlink -a --show-symlinks --color=always"'
# echo 'eval $(thefuck --alias)'
# # You can use whatever you want as an alias, like for Mondays:
# echo 'eval $(thefuck --alias FUCK)'
# # Set up fzf key bindings and fuzzy completion
# echo 'source <(fzf --zsh)'
# } >> ~/.zshrc

echo "Restarting Terminal"
source ~/.zshrc
