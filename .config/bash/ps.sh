#!/bin/bash

#
# PS
#
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"

GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
WHITE="\[\e[39m\]"

update-ps() {
    export PS1="$BOLD$BLUE[\u@\h $WHITE\W$BLUE]$GREEN$(__git_ps1)$BLUE \$\[$(tput sgr0)\]$RESET "
    export PS2="$BOLD$BLUE>$RESET "
}
export PROMPT_COMMAND=update-ps
