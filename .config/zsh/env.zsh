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

export AWS_PROFILE=foundation

# trust-and-safety local dev; dummy values, real ones live in Vault
export ZENDESK_API_TOKEN=x
export SENDGRID_API_KEY=x
export NIMA_GREENFLAG_AUTH_TOKEN=local-token
