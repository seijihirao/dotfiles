#!/bin/bash

#
# COLORS
#
RESET="\[\e[0m\]"
BOLD="\[\e[1m\]"

GREEN="\[\e[32m\]"
YELLOW="\[\e[33m\]"
BLUE="\[\e[34m\]"
WHITE="\[\e[39m\]"

#
# GIT
#
export GIT_PS1_DESCRIBE_STYLE='contains'
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
#export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=1

#
# PS
#
update-ps() {
    export PS1="$BOLD$GREEN$(__git_ps1 '(%s)')$BLUE[\u@\h $WHITE\W$BLUE]\$\[$(tput sgr0)\]$RESET "
    export PS2="$BOLD$BLUE>$RESET "
}
export PROMPT_COMMAND="update-ps;$PROMPT_COMMAND"
