shopt -s expand_aliases

#
# System
#
alias df='df -h'                          # sidk in human-readable sizes
alias free='free -h'                      # memory in human-readable sizes

#
# Files
#
alias cp="cp -i"                          # confirm before overwriting something
alias clipboard='xclip -selection clipboard' # copy to clipboard

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

#
# Programming
#
alias emacs="emacs -nw"

#
# Utility
#
alias beep='paplay /usr/share/sounds/freedesktop/stereo/complete.oga'
alias listen-mic='pactl load-module module-loopback latency_msec=1'
