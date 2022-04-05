#!/bin/sh

if [ -f ~/.bash_git ]; then
source ~/.bash_git
fi

if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    .  /usr/share/git/completion/git-prompt.sh
fi
