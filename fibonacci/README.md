# Fibonacci, in Bash

This script was originally completed on 2024 August 14, Wednesday.

`fibonacci` was created to see if was possible to recreate, in Bash, the [fibonacci Rust project](https://github.com/davidvogelxyz/fibonacci).

While it's not as versatile as the Rust version, it's a demonstration that Bash is able to perform a simple algorithm.

## References

- [StackOverflow - Reverse the order of characters in a string](https://stackoverflow.com/questions/11461625/reverse-the-order-of-characters-in-a-string)
    - Use `rev` to reverse the order of characters in a string
- [Linux Simply - Elements of Array](https://linuxsimply.com/bash-scripting-tutorial/array/elements-of-array/)
    - The elements of an array, in Bash
- [StackOverflow - How can I add numbers in a bash script?](https://stackoverflow.com/questions/6348902/how-can-i-add-numbers-in-a-bash-script)
    - How to add in Bash
        - Arithmetic expansion: `$((EXPR))`
            - Example: `fib=$((l + r))`
- [StackExchange - How do I insert a space every four characters in a long line?](https://unix.stackexchange.com/questions/5980/how-do-i-insert-a-space-every-four-characters-in-a-long-line)
    - Use `sed` to insert "some pattern" every "n" characters
        - `sed 's/.\{3\}/&,/g'`
- [SuperUser - What is the maximum value of a numeric bash shell variable?](https://superuser.com/questions/1030122/what-is-the-maximum-value-of-a-numeric-bash-shell-variable)
    - Dependent on CPU archtecture
    - But: an x64 computer will have a max value of a signed 64-bit integer
- [Rust - i64](https://doc.rust-lang.org/std/primitive.i64.html)
    - i64 max value = 9,223,372,036,854,775,807
