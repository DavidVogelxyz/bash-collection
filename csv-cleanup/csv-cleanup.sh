#!/bin/sh

####################
# ORIGINAL ATTEMPT
####################

#list=$(find . -maxdepth 1 -type f | sed '/.sh/d' | sed 's/^.\///')

#while IFS=',' read -r identifier important; do
#    echo "$important" >> "$combinedlist"
#done < "$file"

####################
# VARIABLES
####################

directory="whatever-directory"
combinedlist="combined-list"

####################
# ACTUAL CODE
####################

for file in "${directory}"/*; do
    while IFS=',' read -r identifier important useless; do
        echo "$important" >> "$combinedlist"
    done < "$file"
done
