#!/bin/sh

readonly connections=(
    '127.0.0.1|tcp|22'
    '127.0.0.1|tcp|80'
    '127.0.0.1|tcp|443'
    '192.168.0.1|tcp|22'
    '192.168.0.1|tcp|80'
    '192.168.0.1|tcp|443'
    '127.0.0.1/32|tcp|22'
    '127.0.0.1/32|tcp|80'
    '127.0.0.1/32|tcp|443'
    '192.168.0.1/32|tcp|22'
    '192.168.0.1/32|tcp|80'
    '192.168.0.1/32|tcp|443'
)

function set_connections(){
    local range proto port
    for fields in ${connections[@]}; do
        IFS=$'|' read -r range proto port <<< "$fields"
        ufw allow from "$range" proto "$proto" to any port "$port"
    done
}

set_connections
