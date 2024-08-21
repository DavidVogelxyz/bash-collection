#!/bin/sh

count=0
echo "$count"
sleep 1

while [[ count -ne 10 ]]; do
    ((count+=1))
    echo "$count"
    sleep 1
done

[[ count -eq 10 ]] && echo -e "\nkek"
