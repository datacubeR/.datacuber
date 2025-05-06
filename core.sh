
echo "Uninstalling Firefox..."
sudo pacman -Rsn firefox

echo "Installing from AUR (Chrome, Wezterm, picom)..."
yay -S google-chrome wezterm picom

echo "Installing from Pacman.."

sudo pacman -S gnome-keyring flameshot zsh zoxyde eza fzf

echo "Installing Zed..."
curl -f https://zed.dev/install.sh | sh

echo "Installing Starship"
curl -sS https://starship.rs/install.sh | sh

echo "Installing Zsh-Syntax-Highlighting..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

echo "Setting up with ZSH..."
