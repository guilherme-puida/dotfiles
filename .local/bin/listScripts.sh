#!/usr/bin/env sh

echo hello

chosen=$(printf "%s;%s;%s" "Emoji picker (unicode)" "Power menu" "Screenshot menu" | rofi -dmenu -l 3 -p "choose a script to launch" -sep ';' -i)

case "$chosen" in
    "Emoji picker (unicode)") rofiunicode.sh ;;
    "Power menu") power.sh ;;
    "Screenshot menu") screenshot.sh ;;
esac
