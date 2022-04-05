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
PINK="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
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
    # Git
    local PS_GIT="\[${GREEN}\]$(__git_ps1 '(%s)')"

    # Python Virtual Environment
    if [ -z ${VIRTUAL_ENV} ]; then
        local PS_VENV=""
    else
        local PS_VENV="\[${CYAN}\][$(basename "${VIRTUAL_ENV}")]"
    fi
    
    # System
    local PS_SYSTEM="\[${BLUE}\][\u@\h \[${WHITE}\]\W\[${BLUE}\]]"

    PS1="\[${BOLD}\]${PS_GIT}${PS_VENV}${PS_SYSTEM}\$\[${RESET}\] "
    PS2="\[${BOLD}${BLUE}\]\$\[${RESET}\] "

    #powerline (not using because of non-printable characters bug)
    #PS1="$(powerline shell aboveleft)"
    #PS2="$(powerline shell left)"
}
PROMPT_COMMAND="update-ps;$PROMPT_COMMAND"
