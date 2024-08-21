# ufw-firewall-rules

## Version 1

This script was originally completed on 2024 August 7, Wednesday.

`ufw-firewall-rules` was created to simplify the process of creating firewall rules in UFW.

The script can be given a list of IPs and ports, and it will create an IP-specific firewall rule on all the ports given. This is especially helpful when working with server projects where a handful of IP addresses need to be whitelisted so they can access the server.

## Version 2

This script was originally completed on 2024 August 21, Wednesday.

This version of the script was completed after reading about associative arrays and hashmaps, in Bash.

It takes a more complex and concatenated input, parses it, and creates the `ufw` rules. It can take as an input both an IP address, as well as a range, and also allows the user to specify the protocol (TCP/UDP).

## References

- [StackOverflow - How to define hash tables in Bash](https://stackoverflow.com/questions/1494178/how-to-define-hash-tables-in-bash)
    - Associative arrays and hashmaps, in Bash
        - also has some useful information regarding `ufw-firewall-rules`
