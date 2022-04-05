#!/bin/bash

# Run all config files on subfolders
for file in ~/.config/bash/**/*; do
    if [ ! -d $file ]; then
        . $file
    fi
done

# Run all config files
for file in ~/.config/bash/*; do
    if [ ! -d $file ]; then
        . $file
    fi
done
