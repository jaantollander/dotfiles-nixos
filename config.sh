#!/usr/bin/env bash
set -euo pipefail

export DOT_MODULE_DIR=./module

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
configure "$DOT_MODULE_DIR/bash/bashrc" "$HOME/.bashrc"
configure "$DOT_MODULE_DIR/neovim/init.vim" "$HOME/.config/nvim/init.vim"
configure "$DOT_MODULE_DIR/tmux/tmux.conf" "$HOME/.config/tmux/tmux.conf"
configure "$DOT_MODULE_DIR/i3/i3.conf" "$HOME/.config/i3/config"
configure "$DOT_MODULE_DIR/i3status/i3status.conf" "$HOME/.config/i3status/config"
configure "$DOT_MODULE_DIR/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"
configure "$DOT_MODULE_DIR/rofi/i3.conf" "$HOME/.config/i3/include/rofi.conf"
configure "$DOT_MODULE_DIR/lsd/lsd.yaml" "$HOME/.config/lsd/config.yaml"
