#!/bin/sh

#################
# VARIABLES
#################

# complete list of numbers to be filtered
number_list="number-list"

# first list to compare against
compare_list_one="imports/compare-list_one.csv"

# results of `comparison-first`
temp_list="temp-list"

# second list to compare against
compare_list_two="imports/compare-list_two.csv"

# results of `comparison-first`
filtered_list="filtered-list"

#################
# FUNCTIONS
#################

comparison-first() {
    # adds "number" to "temp_list", only if the number doesn't appear in "compare_list_one"
    while read -r number; do
        echo "looking up $number"
        grep "$number" "$compare_list_one"
        [[ $? == "1" ]] && echo "$number" >> "$temp_list"
        echo
    done < "$number_list"
}

comparison-second() {
    # adds "number" to "filtered_list", only if the number doesn't appear in "compare_list_two"
    while read -r number; do
        echo "looking up $number"
        grep "$number" "$compare_list_two"
        [[ $? == "1" ]] && echo "$number" >> "$filtered_list"
        echo
    done < "$temp_list"
}

comparison-output() {
    echo "The numbers that weren't found in either CSV are as follows:"
    cat "$filtered_list"
}

#################
# ACTUAL CODE
#################

comparison-first

comparison-second

comparison-output

#################
# CLEAN UP
#################

rm "$temp_list" "$filtered_list"
