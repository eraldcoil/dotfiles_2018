#!/bin/bash
compton --config /home/battle/.config/compton.conf
sleep 1
xautolock -time 10 -locker blurlock
sleep 1
# /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
nitrogen --restore; sleep 1; compton -b
sleep 1
2bwm &
