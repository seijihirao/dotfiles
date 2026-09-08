if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PYTHONDONTWRITEBYTECODE=1

typeset -U path
path=("$HOME/.local/bin" $path)
[[ -d "$HOME/go/bin" ]] && path+=("$HOME/go/bin")

[[ -f "$HOME/.unity/env" ]] && source "$HOME/.unity/env"
