# tmux keymaps

Prefix is `Ctrl-Space`. Custom bindings live in `tmux.conf`; everything else is the tmux default
(`prefix ?` lists every binding).

## Sessions

| Key | Action |
|---|---|
| `prefix g` | Popup to pick a git repo under `~/Documents`; opens (or switches to) a session with nvim left, small terminal below, two terminals right (custom) |
| `prefix X` | Kill the current session and switch to `main`, creating it if missing; from `main` itself, switches to the last session (custom) |
| `prefix s` | Session list; `x` then `y` kills the highlighted session |
| `prefix :` `kill-session` | Kill the current session; tmux switches to another session instead of exiting (`detach-on-destroy off`) |
| `prefix d` | Detach |

## Windows

| Key | Action |
|---|---|
| `Shift-Left` / `Shift-Right` | Previous / next window (custom, no prefix) |
| `Alt-Shift-H` / `Alt-Shift-L` | Previous / next window (custom, no prefix) |

## Panes

| Key | Action |
|---|---|
| `prefix "` / `prefix %` | Split below / right, keeping the current directory (custom) |
| `Alt-Arrow` | Move between panes; passed through to nvim when it has focus (custom, no prefix) |
| `Alt-\` | Last pane (custom, no prefix) |

## Copy mode (vi)

| Key | Action |
|---|---|
| `v` | Begin selection |
| `Ctrl-v` | Toggle rectangle selection |
| `y` | Copy selection and exit |
| `prefix P` | Paste buffer (custom) |
