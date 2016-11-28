#!/bin/bash

#
# Activates virtual env
#

python-venv(){
    local venvpath=".venv"
 
    if ! [ -z ${1} ]; then
        venvpath="${1}"
    fi
    
    if ! [ -d ${venvpath} ]; then
        printf "Directory \"${venvpath}\" does not exist.\n"
        read -p "Do you want to create a new environment? (Y/n)" createvenv
        case ${createvenv} in
            [Nn]* ) return;;
            * ) virtualenv ${venvpath};;
        esac
    fi
    . ${venvpath}/bin/activate
}

