#!/usr/bin/env bash
export DOT_MODULE_DIR=./module

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_LOCAL_HOME="$HOME/.local"
export XDG_DATA_HOME="$XDG_LOCAL_HOME/share"
export XDG_STATE_HOME="$XDG_LOCAL_HOME/state"
export XDG_BIN_HOME="$XDG_LOCAL_HOME/bin"

# Copy source to destination and create directory if it doesn't exist.
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
configure "$DOT_MODULE_DIR/tmux/tmux.conf" "$XDG_CONFIG_HOME/tmux/tmux.conf"
configure "$DOT_MODULE_DIR/i3/i3.conf" "$XDG_CONFIG_HOME/i3/config"
configure "$DOT_MODULE_DIR/i3status/i3status.conf" "$XDG_CONFIG_HOME/i3status/config"
configure "$DOT_MODULE_DIR/rofi/config.rasi" "$XDG_CONFIG_HOME/rofi/config.rasi"
configure "$DOT_MODULE_DIR/rofi/i3.conf" "$XDG_CONFIG_HOME/i3/include/rofi.conf"
