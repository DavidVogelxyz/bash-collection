# loop-multiple-emails

This script was originally completed on 2024 June 26, Wednesday.

`loop-multiple-emails` was another script that created to solve a problem utilizing a simple Bash script.

In this situation, a person was presented with a (large) CSV file of users. Some of these users were in the CSV file multiple times, using different e-mail addresses. The goal was to quickly filter down the original CSV file into a much more workable list of users, in order to assess which users were in the system with multiple e-mail addresses.

While this script isn't perfect, it *was* able to quickly filter a list of a couple of thousand users into a much smaller list. The script did this by only counting "as duplicate" any instance where a user's last name appeared multiple times. The script failed with users who shared last names. However, the script did eliminate any instance of a last name appearing only once, and gave an output list that was much easier to sort through.
