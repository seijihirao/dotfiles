#!/bin/sh

# 
# Compile and run C with tests
#
gcc-test(){
    ARGS=$(getopt -o ":i:o:d" -l "input:,output:,debug,valgrind" -n "gcc-test" -- "$@");
    
    if [ $? -ne 0 ] ; then
      return 1
    fi
    
    eval set -- "$ARGS";
    
    local debug
    local input
    local valgrind
    local input=""
    local output=""
    
    while true ; do
        case "$1" in
            -i|--input)
                shift;
                if [ -n "$1" ]; then
                    input="$1";
                fi
                shift;
                ;;
            -o|--output)
                shift;
                if [ -n "$1" ]; then
                    output="$1";
                fi
                shift;
                ;;
            -d|--debug)
                shift;
                debug="-DDEBUG"
                ;;
            --valgrind)
                shift;
                valgrind="true"
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
    local program="$1"
    GREEN='\033[0;32m'
    RESET="$(tput sgr0)"
    
    if gcc $debug -std=c99 -pedantic -Wall -lm ./*.c -o "$program".o ; then
        if [ -z "$valgrind" ]; then
            if [ "$output" != "" ] ; then
                diff="diff"
                if command -v colordiff >/dev/null 2>&1 ; then
                    diff="colordiff"
                fi
                if $diff -Naur "$output" <("./$program".o < "$input") ; then
                    printf "${GREEN}OK!\n${RESET}"
                fi
            else
                if [ "$input" != "" ] ; then    
                    "./$program".o < "$input"
                else
                    "./$program".o
                fi
            fi
        else
                if [ "$input" != "" ] ; then
                    valgrind --leak-check=full -v "./$program".o < "$input"
                else
                    valgrind --leak-check=full -v "./$program".o
                fi
        fi
    fi
}
