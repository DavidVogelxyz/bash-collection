#!/bin/sh

ips=(
    "127.0.0.1"
    "192.168.0.1"
)

ports=(
    "22"
    "80"
    "443"
)

for ip in "${ips[@]}"; do
    for port in "${ports[@]}"; do
        sudo ufw allow from "$ip" proto tcp to any port "$port"
    done
done
