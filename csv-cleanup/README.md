# csv-cleanup

This script was originally completed on 2024 May 26, Sunday.

`csv-cleanup.sh` is a simple script that assists in combining multiple separate CSV files into a single list file. It loops through a bunch of CSV files in a directory, grabs the relevant information, and uses `echo` to add that information into a new list file. That file could then be cleaned up using `vim` and `:sort -u` to remove any duplicate entries, giving the user one combined list file that only has one entry of each relevant item.

The additional `combine-files.sh` is another script that works in a similar way. It is able to take multiple outputs of `csv-cleanup.sh` and combine them into an even bigger list file, and then removes the original input list files after adding them to the newer "combined list file".
