GIT_ROOT=$(git rev-parse --show-toplevel)

# Install
yay -S --needed - < explicit_packages.txt

# ZSH & ZShRC
echo "[zsh] Installing..."
sudo pacman -S --needed zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
if [ -L "~/.zshrc" ]; then
    echo "[zshrc] Removing existing..."
    rm "~/.zshrc"
fi
echo "[zshrc] Linking..."
ln -sf "$GIT_ROOT/src/.zshrc" ~/.zshrc

# BashRC
if [ -L "~/.bashrc" ]; then
    echo "[bashrc] Removing existing..."
    rm "~/.bashrc"
fi
echo "[bashrc] Linking..."
ln -sf "$GIT_ROOT/src/.bashrc" ~/.bashrc

# Code (VSCode-OSS)
echo "[code] Installing..."
sudo pacman -S --needed code
if [ -L "~/.vscode-oss" ]; then
    echo "[code] Removing existing..."
    rm -r "~/.vscode-oss"
fi
echo "[code] Linking..."
ln -sf "$GIT_ROOT/src/.vscode-oss" ~/.vscode-oss

# Cinnamon (Base)
echo "[cinnamon] Installing..."
sudo pacman -S --needed cinnamon

# Cinnamon (icons)
echo "[cinnamon.icons] Installing..."
if [ -L "~/.icons" ]; then
    echo "[cinnamon.icons] Removing existing..."
    rm -r "~/.icons"
fi
echo "[cinnamon.icons] Linking..."
ln -sf "$GIT_ROOT/src/.icons" ~/.icons

# Cinnamon (themes)
echo "[cinnamon.themes] Installing..."
if [ -L "~/.themes" ]; then
    echo "[cinnamon.themes] Removing existing..."
    rm -r "~/.themes"
fi
echo "[cinnamon.themes] Linking..."
ln -sf "$GIT_ROOT/src/.themes" ~/.themes

# XProfile
echo "[xprofile] Installing..."
if [ -L "~/.xprofile" ]; then
    echo "[xprofile] Removing existing..."
    rm "~/.xprofile"
fi
echo "[xprofile] Linking..."
ln -sf "$GIT_ROOT/src/.xprofile" ~/.xprofile

# Alacritty
echo "[alacritty] Installing..."
if [ -L "~/.config/alacritty" ]; then
    echo "[alacritty] Removing existing..."
    rm -r "~/.config/alacritty"
fi
echo "[alacritty] Linking..."
ln -sf "$GIT_ROOT/src/alacritty" ~/.config/alacritty
