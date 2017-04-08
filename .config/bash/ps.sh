#!/bin/bash

#
# COLORS
#
RESET="$(tput sgr0)"
BOLD="$(tput bold)"

BLACK="$(tput setaf 0)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
WHITE="$(tput setaf 7)"

BG_WHITE="$(tput setab 7)"
BG_BLUE="$(tput setab 4)"

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
    #PS1="$(powerline shell aboveleft)"
    PS1="\[${BOLD}${GREEN}\]$(__git_ps1 '(%s)')\[${BLUE}\][\u@\h \[${WHITE}\]\W\[${BLUE}\]]\$\[${RESET}\] "
    #PS2="$(powerline shell left)"
    PS2="\[${BOLD}${BLUE}\]>\[${RESET}\] "
}
PROMPT_COMMAND="update-ps;$PROMPT_COMMAND"
