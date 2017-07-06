#!/bin/bash

# NPM
export NPM_CONFIG_PREFIX=~/.config/programming/npm
export PATH=$PATH:~/.config/programming/npm/bin

# N - version manager
export N_PREFIX="$HOME/.config/programming/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

