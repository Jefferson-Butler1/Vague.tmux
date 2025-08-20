#!/usr/bin/env bash
# Vague colorscheme for tmux
# Based on the Vague Neovim colorscheme
# This theme only sets colors - it preserves your existing statusline configuration

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Define Vague colors
tmux set -g @vague_bg "#141415"
tmux set -g @vague_inactive_bg "#1c1c24"
tmux set -g @vague_fg "#cdcdcd"
tmux set -g @vague_float_border "#878787"
tmux set -g @vague_line "#252530"
tmux set -g @vague_comment "#606079"
tmux set -g @vague_builtin "#b4d4cf"
tmux set -g @vague_func "#c48282"
tmux set -g @vague_string "#e8b589"
tmux set -g @vague_number "#e0a363"
tmux set -g @vague_property "#c3c3d5"
tmux set -g @vague_constant "#aeaed1"
tmux set -g @vague_parameter "#bb9dbd"
tmux set -g @vague_visual "#333738"
tmux set -g @vague_error "#d8647e"
tmux set -g @vague_warning "#f3be7c"
tmux set -g @vague_hint "#7e98e8"
tmux set -g @vague_operator "#90a0b5"
tmux set -g @vague_keyword "#6e94b2"
tmux set -g @vague_type "#9bb4bc"
tmux set -g @vague_search "#405065"
tmux set -g @vague_plus "#7fa563"
tmux set -g @vague_delta "#f3be7c"

# Apply color theme (preserving user's statusline configuration)
tmux set -g status-style "bg=#{@vague_bg},fg=#{@vague_fg}"

# Window status colors
tmux set -g window-status-style "bg=#{@vague_inactive_bg},fg=#{@vague_comment}"
tmux set -g window-status-current-style "bg=#{@vague_visual},fg=#{@vague_func}"
tmux set -g window-status-activity-style "bg=#{@vague_warning},fg=#{@vague_bg}"
tmux set -g window-status-bell-style "bg=#{@vague_error},fg=#{@vague_bg},bold"

# Pane borders
tmux set -g pane-border-style "fg=#{@vague_line}"
tmux set -g pane-active-border-style "fg=#{@vague_keyword}"

# Messages
tmux set -g message-style "bg=#{@vague_visual},fg=#{@vague_fg},bold"
tmux set -g message-command-style "bg=#{@vague_visual},fg=#{@vague_builtin}"

# Mode and selection
tmux set -g mode-style "bg=#{@vague_search},fg=#{@vague_fg}"
tmux set -g copy-mode-match-style "bg=#{@vague_warning},fg=#{@vague_bg}"
tmux set -g copy-mode-current-match-style "bg=#{@vague_error},fg=#{@vague_bg},bold"

# Clock
tmux set -g clock-mode-colour "#{@vague_builtin}"