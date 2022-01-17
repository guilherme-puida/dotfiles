#!/bin/sh

# maim | base64 | curl --location --request POST --form "image=<-" $URL | jq -r '. | data.display_url' | xclip -sel clip

op1="a selected area"
op2="current window"
op3="full screen"
op4="a selected area (save)"
op5="current window (save)"
op6="full screen (save)"


chosen=$(printf '%s;%s;%s;%s;%s;%s\n' "$op1" "$op2" "$op3" "$op4" "$op5" "$op6" \
| rofi -dmenu -l 6 -sep ';' -p "screenshot" -selected-row 0 -i)

case "$chosen" in
    "$op1") maim -s | xclip -sel clipboard -t image/png ;;
    "$op2") maim -i "$(xdotool getactivewindow)" | xclip -sel clipboard -t image/png ;;
    "$op3") maim    | xclip -sel clipboard -t image/png ;;
    "$op4") maim -s ~/Pictures/pic-selected-"$(date '+%y%m%d-%H%M-%S').png" ;;
    "$op5") maim -i "$(xdotool getactivewindow)" ~/Pictures/pic-window-"$(date '+%y%m%d-%H%M-%S').png" ;;
    "$op6") maim ~/Pictures/pic-full-"$(date '+%y%m%d-%H%M-%S').png" ;;
esac
