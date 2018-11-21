#export QT_QPA_PLATFORMTHEME="qt5ct"
# export EDITOR=/usr/bin/nvim
#export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
#export BROWSER=/usr/bin/palemoon
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

xset r rate 300 25
xrdb ~/.Xresources
# hsetroot -fill /home/battle/.config/scripts/watch_dogs_30-wallpaper-1366x768.jpg -tint '#B4A783'
# hsetroot -fill /home/battle/.config/scripts/cropped-1360-768-841698.jpg 
hsetroot -fill /home/battle/.config/scripts/table.jpg
dunst &
sxhkd -c /home/battle/.config/sxhkd/sxhkdrc &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xautolock -time 10 -locker blurlock &

