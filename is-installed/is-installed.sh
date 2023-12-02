#!/bin/sh

# no need to 'echo ""' anymore; just use 'echo'
# or, 'echo -e "\n"'
# security.sh module has unnecessary '| awk'

################################
# VARIABLES
################################

options=(
"Show recommended programs that ARE currently installed."
"Show recommended programs that are NOT currently installed."
"Run neofetch!"
"Open Neovim!"
"Get local network IP address."
"testing button"
"Exit the program."
)

################################
# FUNCTIONS
################################

main() {
    echo -e "Welcome to the script:"
    PS3="What would you like to do? "

    prompt_loop
}

prompt_loop() {
    select option in "${options[@]}"; do
        case $REPLY in
            1) nala_installed; echo -e "\nThe following options are available:"; prompt_loop;;
            2) nala_not_installed; echo -e "\nThe following options are available:"; prompt_loop;;
            3) echo; neofetch; echo "The following options are available:"; prompt_loop;;
            4) nvim; exit;;
            5) echo; hostname -I; echo -e "\nThe following options are available:"; prompt_loop;;
            6) echo -e "\nThe following options are available:"; prompt_loop;;
            7) echo "Exiting now." && exit;;
            *) echo "Unknown response. Try again.";;        # remove "$REPLY" from other scripts
        esac
    done
}

is_installed() {
    echo -e "\nThe following packages are installed on the system:"

    while read pkg; do
        [ -e /usr/bin/$pkg ] && echo "$pkg"
    done < package-list
}

is_not_installed() {
    echo -e "\nNo installation found for the following packages:"

    while read pkg; do
        [ ! -e /usr/bin/$pkg ] && echo "$pkg"
    done < package-list
}

nala_installed() {
    echo -e "\nThe following packages are installed on the system:"

    nala list --installed > tmp

    while read pkg; do
        grep $pkg tmp >/dev/null 2>&1 && echo "$pkg"
    done < package-list
}

nala_not_installed() {
    echo -e "\nNo installation found for the following packages:"

    nala list --installed > tmp

    while read pkg; do
        grep $pkg tmp >/dev/null 2>&1 || echo "$pkg"
    done < package-list
}

################################
# ACTUAL SCRIPT
################################

main
