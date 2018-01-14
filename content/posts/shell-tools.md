+++
date = "2018-01-14T20:18:40+13:00"
title = "Shell tools"

+++

Here's some neat little tricks I have learned over time :

`sort -n` : sort numerically

`sort -k 1` : sort by a field

`sort -t "/" -k 3` : sort by the third field, split by "/"

`uniq -c` : uniq and list the counts. Combine with `sort -n` for great success

`cut -d " " -f 2,3` : The cut utility is so useful - gets data out from tables for you quickly

`xargs -I {} echo {}.txt` : Use xargs to construct these arguments for echo to run

`xargs -t echo` : Print out the command before running it.

`xargs -n1 echo` : Run echo once per input

`grep -E "(a|b|c)"` : grep with extended regexp

`grep -v pattern` : show lines *not* matching the pattern

`grep -o pattern` : show only the matching part

Combine the above commands with pipe (`|`) and one can achieve a lot !
