#!/bin/sh

export PYTHONDONTWRITEBYTECODE=1

#
# Activates virtual env
#

python-venv(){
    ARGS=$(getopt -o ":p:v:" -l "path:,version:" -n "python-venv" -- "$@");

    if [ $? -ne 0 ] ; then
      return 1
    fi

    eval set -- "$ARGS";
    
    local venvpath=".venv"
    local pythonversion
    
    while true ; do
        case "$1" in
            -p|--path)
                shift;
                if [ -n "$1" ]; then
                    venvpath="$1";
                fi
                shift;
                ;;
            -v|--version)
                shift;
                if [ -n "$1" ]; then
                    pythonversion="$1";
                fi
                shift;
                ;;
            --)
                shift;
                break;
                ;;
            *)
                echo $1;
                shift;
                ;;
        esac
    done

    if ! [ -d ${venvpath} ]; then
        printf "Directory \"${venvpath}\" does not exist.\n"
        read -p "Do you want to create a new environment? (Y/n)" createvenv
        case ${createvenv} in
            [Nn]* ) return;;
            * ) if [ -z "${pythonversion}" ]; then
                    virtualenv ${venvpath};
                else
                    virtualenv "--python=python${pythonversion}" ${venvpath};
                fi

        esac
    fi
    . ${venvpath}/bin/activate
}

