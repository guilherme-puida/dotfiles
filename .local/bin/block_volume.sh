#!/bin/sh


# Block button reference: 1 = Left, 2 = Middle, 3 = Right, 4 = Scroll Up, 5 = Scroll Down, 
# 6 = Custom, 7 = Custom, 8 = Upper Thumb, 9 = Lower Thumb, 10+ = Custom

case $BLOCK_BUTTON in
    1) pavucontrol &>/dev/null & ;;
    3) amixer --quiet set Master toggle ;;
    4) amixer --quiet set Master 2%+ ;;
    5) amixer --quiet set Master 2%- ;;
esac

status=$(amixer get Master | tail -n 1 | grep -wo "on")

if [[ "$status" == "on" ]]; then
    awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master)
else
    echo "off"
fi
