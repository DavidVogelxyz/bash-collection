#!/bin/sh

################
# VARIABLES
################

dir="keys"

################
# FUNCTIONS
################

change_perms() {
    chmod -v 600 "$1"
}

keys_change_perms() {
    while read -r key; do
        change_perms "$key"
    done < <(grep -lr "PRIVATE" "$dir")
}


################
# ACTUAL CODE
################

change_perms ~/.ssh/config

keys_change_perms
