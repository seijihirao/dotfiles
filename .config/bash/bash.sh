# Better bash_history
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth # remove repeated commands on bash history
export HISTIGNORE='cd:ls:bg:fg:history'
export PROMPT_COMMAND='history -a' # add to history right when command is used (not working :/)
