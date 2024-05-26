#!/bin/sh

####################
# VARIABLES
####################

list=$(find . -maxdepth 1 -type f | sed '/.sh/d' | sed 's/^.\///')

####################
# ACTUAL CODE
####################

for file in "${list[@]}"; do
    cat $file >> ../mega-combined-list
    rm $file
done
