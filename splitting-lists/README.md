# splitting-lists

This script was originally completed on 2024 August 19, Monday.

`splitting-lists` was created to split a CSV into two separate CSV files.

Instead of splitting the list in half (top half vs bottom half), which is easy to do using a tool such as Vim, this script splits based on the item number. Every odd-numbered entry goes into one list, and every even number entry goes into another list. Therefore, lists that are sorted (alphabetically, numerically, etc) are split such that both lists have a relatively identical number of all list items (A-Z, etc). The alternative being that A-M is in one list, and N-Z is in the other list.
