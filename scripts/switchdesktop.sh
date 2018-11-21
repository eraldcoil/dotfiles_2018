#!/bin/bash
# ws=$(xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //')
# d=$(($ws + 1))
# echo $ws
# echo $1
xdotool set_desktop $(($1-1))
dunstify -r 1 "$(($1))"
