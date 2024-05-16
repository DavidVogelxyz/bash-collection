#!/bin/sh

continue_prompt() {
    echo

    echo -n 'Do you want to continue? (y/yes/n/no): '

    read answer

    echo

    case $answer in
        yes|YES|y|Y)
            ;;
        no|NO|n|N)
            echo "OK -- exiting"
            exit 1;
            ;;
        *)
            echo "Sorry, I didn't understand that answer -- exiting"
            exit 1;
            ;;
    esac
}


and_logic() {
    echo -n "Checking that /etc/apt/sources.list.d exists as a directory... "

    if [ -e /etc/apt/sources.list.d -a -d /etc/apt/sources.list.d ]
    then
        echo "Good!"
    else
        echo "ERROR -- exiting"
        echo
        exit 1;
    fi

    echo
}
