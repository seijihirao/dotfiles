#!/bin/bash

#
# COLORS
#
RESET="\[$(tput sgr0)\]"
BOLD="\[$(tput bold)\]"

GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
WHITE="\[$(tput setaf 7)\]"

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
