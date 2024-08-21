#!/bin/sh

declare -A numbers

numbers=(
    ["1"]="hi"
    ["2"]="there"
    ["3"]="this"
    ["4"]="is"
    ["5"]="a"
    ["6"]="short"
    ["7"]="test"
    ["8"]="using"
    ["9"]="associative"
    ["10"]="arrays"
)

count=0
echo -e "\n$count"
sleep 1

while [[ count -ne 10 ]]; do
    for word in "${!numbers[@]}"; do
        ((count+=1))
        echo "$word: ${numbers[$word]}"
        sleep 1
    done
done

[[ count -eq 10 ]] && echo -e "\nkek"
