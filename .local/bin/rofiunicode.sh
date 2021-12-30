#!/bin/sh

chosen=$(cut -d ';' -f1 ~/.local/share/emoji | rofi -dmenu -i -l 30 | sed "s/ .*//")


[ -z "$chosen" ] && exit

if [ -n "$1" ]; then
    xdotool type "$chosen"
else
    printf "$chosen" | xclip -selection clipboard
    notify-send "'$chosen' copied to clipboard"
fi
