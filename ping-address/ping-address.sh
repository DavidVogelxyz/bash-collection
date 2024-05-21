#!/bin/sh

#################
# VARIABLES
#################

inventory_file="inventory"

#################
# FUNCTIONS
#################

pingaddress() {
    while IFS='=' read -r location address; do
        echo "$location"
        ping "$address" & sleep 1 && kill "$!"
        echo
    done < "$inventory_file"
}

#################
# ACTUAL CODE
#################

pingaddress
