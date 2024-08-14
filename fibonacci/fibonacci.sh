#!/bin/sh

# grab $input from user
# "92" is the largest integer that can be processed
# must be a i64, since max value would be 9,223,372,036,854,775,807
input="92"

# using redirection, because making $numberset a command substitution doesn't create an array
seq "$input" > numberset

# set these variables
fib="1"
l="0"
r="1"

# fibonacci loop
while read -r number; do
    [[ "$number" == "$input" ]] && break;
    fib=$((l + r))
    l="$r"
    r="$fib"
done < numberset

# reverse for adding commas every 3 characters
invert=$(echo "$fib" | rev)

# add commas & reverse back
fib=$(echo "$invert" | sed 's/.\{3\}/&,/g' | rev)

# print output
echo "The $input number of the Fibonacci sequence is: $fib"

# clean up tempfile creation
rm "numberset"
