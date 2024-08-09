#!/usr/bin/env bash
set -euo pipefail

# Copy source ($1) to destination ($2) and create the destination directory if it doesn't exist.
configure() {
    mkdir -v -p "$(dirname "$2")"
    cp -v "$1" "$2"
}

# Configure git
git config --global user.name "Jaan Tollander de Balsch"
git config --global user.email "jaan@hey.com"
git config --global init.defaultbranch "main"

# Configure modules
configure "./module/bash/bashrc" "$HOME/.bashrc"
configure "./module/neovim/init.vim" "$HOME/.config/nvim/init.vim"
configure "./module/alacritty/alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"
configure "./module/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
configure "./module/i3/i3.conf" "$HOME/.config/i3/config"
configure "./module/i3status/i3status.conf" "$HOME/.config/i3status/config"
configure "./module/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"
configure "./module/rofi/i3.conf" "$HOME/.config/i3/include/rofi.conf"
configure "./module/pulseaudio/i3.conf" "$HOME/.config/i3/include/pulseaudio.conf"
configure "./module/brightnessctl/i3.conf" "$HOME/.config/i3/include/brightnessctl.conf"
configure "./module/starship/starship.toml" "$HOME/.config/starship/starship.toml"
configure "./module/lsd/lsd.yaml" "$HOME/.config/lsd/config.yaml"
