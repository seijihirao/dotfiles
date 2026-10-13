#!/usr/bin/env bash
# Kills the current session without detaching: the client moves to "main" first.
set -euo pipefail

target=main
current=$(tmux display-message -p '#{session_id}')

tmux has-session -t "=$target" 2>/dev/null || tmux new-session -d -s "$target" -c "$HOME"

if [ "$(tmux display-message -p -t "=$target" '#{session_id}')" = "$current" ]; then
  tmux switch-client -l 2>/dev/null || tmux switch-client -n
else
  tmux switch-client -t "=$target"
fi

tmux kill-session -t "$current"
