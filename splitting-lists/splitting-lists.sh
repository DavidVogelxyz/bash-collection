#!/bin/sh

#################
# VARIABLES
#################

file="fakenames.csv"
odd="odd.csv"
even="even.csv"

#################
# ACTUAL CODE
#################

linenumber=0

# adds line to "odd" if modulo is odd
# adds line to "even" if modulo is even
while read -r content; do
    ((linenumber+=1))
    [[ $((linenumber%2)) -eq 1 ]] && echo "$content" >> "$odd"
    [[ $((linenumber%2)) -eq 0 ]] && echo "$content" >> "$even"
done < "$file"

#################
# TEST
#################

linenumber=0

while read -r content; do
    ((linenumber+=1))
    echo "$linenumber: $content"
done < "$file"

cat "$odd"
cat "$even"

#################
# CLEAN UP
#################

rm "$odd" "$even"
