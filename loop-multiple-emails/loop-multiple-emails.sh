#!/bin/sh

#################
# VARIABLES
#################

inputfile="active-users.csv"

duplicatefile="duplicate-users.csv"
notduplicatefile="not-duplicate-users.csv"

#################
# FUNCTIONS
#################

loopemails() {
    while IFS="," read -r display blank first last title location email; do
        countlast=$(grep -i "$last" "$inputfile" | wc -l)
        [[ "$countlast" -gt 1 ]] && echo "$first,$last,$email,$countlast" >> "$duplicatefile"
        [[ "$countlast" -eq 1 ]] && echo "$first,$last,$email,$countlast" >> "$notduplicatefile"
    done < "$inputfile"
}

loopresults() {
    echo "The amount of duplicate users:" $(wc -l "$duplicatefile" | awk '{print $1}')
    echo "The amount of non-duplicate users:" $(wc -l "$notduplicatefile" | awk '{print $1}')
}

#################
# ACTUAL CODE
#################

loopemails

loopresults
