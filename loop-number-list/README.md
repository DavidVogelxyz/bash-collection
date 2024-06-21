# loop-number-list

This script was originally completed on 2024 June 21, Friday.

`loop-number-list` was a script that was quickly created to demonstrate the power of Bash scripts.

The problem presented was the following: a user was given a full list of numbers, and they were also given two other lists of numbers which each contained some of the numbers from the "full list". The goal was to find any numbers from the "full list" that didn't appear on the other two lists.

This Bash script can achieve just that. It takes in the three lists as inputs, and loops through both "comparative lists", only outputting the numbers from the "full list" that don't appear in the "comparative lists". At the end of the script, it uses `cat` to reveal the numbers that weren't found in the "comparison lists".

Obviously, with the sample data provided, it's much easier to manually look and find the "missing numbers". However, when the lists have hundred of items, it's far simpler (and quicker) to let a script do the work.
