#!/bin/sh

#################
# VARIABLES
#################

error_log="error-log"

#################
# FUNCTIONS
#################

# the error function will append to an "error_log" a timestamp and the ID that failed
error() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") - failed on $1" >> "$error_log"
}

# the following function will either succeed, or error out
example() {
    echo "$1" || error "$1"
}

#################
# ACTUAL CODE
#################

# this loop takes a file as an argument, and runs `example` on its contents
while read -r "id"; do
    example "$id"
done < "$1"
