#!/bin/sh

#################
# VARIABLES
#################

#array=(3 2 1)
array=(81 71 38 111 113 214 710 42 69 420 100 14 3 17 10 20 15 18 3 2 1)

count=$(echo ${array[*]} | wc -w)

#################
# FUNCTIONS
#################

bubblesort() {
    echo "The original array:"
    echo ${array[*]}
    echo -e "\\nThe number of elements in the array:"
    echo $count

    for ((i = 0; i<$count; i++)); do
        for ((j = 0; j<$count-i-1; j++)); do
            [[ ${array[j]} -gt ${array[$((j+1))]} ]] && \
                temp=${array[j]} && \
                array[$j]=${array[$((j+1))]} && \
                array[$((j+1))]=$temp
        done
    done

    echo -e "\\nThe sorted array:"
    echo ${array[*]}
}

bubblesort-faster() {
    echo "The original array:"
    echo ${array[*]}
    echo -e "\\nThe number of elements in the array:"
    echo $count

    flag=1
    for ((i = 0; i<$count; i++)); do
        flag=0
        for ((j = 0; j<$count-i-1; j++)); do
            [[ ${array[j]} -gt ${array[$((j+1))]} ]] && \
                temp=${array[j]} && \
                array[$j]=${array[$((j+1))]} && \
                array[$((j+1))]=$temp && \
                flag=1
        done

        [[ $flag -eq 0 ]] && break
    done

    echo -e "\\nThe sorted array:"
    echo ${array[*]}
}

#################
# ACTUAL CODE
#################

echo -e "bubblesort:\n"

time bubblesort

echo -e "\n----------\n"

echo -e "bubblesort-faster:\n"

time bubblesort-faster
