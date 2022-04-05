#!/bin/sh

#Test unicamp labs
test-lab(){
    local lab="${PWD##*/}"

    for file in ./tests/*.in; do
        local filename="${file%.*}"
        printf "\n--- Iniciando teste ${filename##*/} ---\n"
        gcc-test "$lab" -i "${filename}.in" -o "${filename}.out"
    done
}
