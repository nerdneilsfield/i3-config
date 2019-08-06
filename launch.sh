#!/bin/sh

feh --bg-fill $HOME/.config/wallpaper.jpg

killall -q polybar fcitx flameshot copyq

while grep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar -c ~/.config/i3/polybar example &

fcitx &
copyq &
flameshot &
