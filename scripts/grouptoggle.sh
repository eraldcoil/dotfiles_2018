#!/bin/sh
# a=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).name' | cut -d"\"" -f2)
a=$(xprop -root _NET_CURRENT_DESKTOP | sed -e 's/_NET_CURRENT_DESKTOP(CARDINAL) = //')
if [ $1 = "show" ]; then
    k=$(bash ~/.config/scripts/numtoword.sh $a)
    dunstify -r 1 "$k" 
elif [ $1 = "resize" ]; then
    dunstify -r 99 -u critical "resize"
else
    k=$(bash ~/.config/scripts/numtoword.sh $a)
    dunstify -r 1 "$k hidden"
fi


