#!/usr/bin/env bash
set -euo pipefail

root="$HOME/Documents"

dir=$(find "$root" -maxdepth 5 \( -name node_modules -o -name vendor -o -name .terraform \) -prune -o -name .git -print 2>/dev/null |
	sed -e 's|/\.git$||' -e "s|^$root/||" | sort |
	fzf --reverse --prompt 'repo> ') || exit 0
dir="$root/$dir"

# tmux rejects '.' and ':' in session names
name=$(printf '%s/%s' "$(basename "$(dirname "$dir")")" "$(basename "$dir")" | tr '.:' '__')

if ! tmux has-session -t "=$name" 2>/dev/null; then
	w=$(tmux display -p '#{client_width}')
	h=$(tmux display -p '#{client_height}')
	editor=$(tmux new-session -d -s "$name" -c "$dir" -x "$w" -y "$h" -P -F '#{pane_id}')
	right=$(tmux split-window -h -t "$editor" -c "$dir" -l 49% -P -F '#{pane_id}')
	tmux split-window -v -t "$right" -c "$dir" -l 50%
	tmux split-window -v -t "$editor" -c "$dir" -l 12%
	tmux send-keys -t "$editor" 'nvim .' Enter
	tmux select-pane -t "$editor"
fi

tmux switch-client -t "=$name"
