#!/usr/bin/env bash
# Vague colorscheme for tmux
# Based on the Vague Neovim colorscheme
# This theme only sets colors - it preserves your existing statusline configuration

# Set path of script
PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

tmux source-file "${PLUGIN_DIR}/vague.conf"