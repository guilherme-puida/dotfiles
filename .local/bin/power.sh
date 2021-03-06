#!/usr/bin/env sh

poweroff="â» Power off"
reboot="ð Reboot"
lock="ðLock"
suspend="â Suspend"
logout="ðª Log out"

chosen=$(printf '%s;%s;%s;%s;%s\n' "$poweroff" "$reboot" "$lock" "$suspend" "$logout" \
| rofi -dmenu -l 5 -sep ';' -p "power menu" -i)

case "$chosen" in
    "$poweroff") rofi-prompt.sh --query "Power off the computer?" && poweroff ;;
    "$reboot") rofi-prompt.sh --query "Reboot the computer?" && reboot ;;
    "$lock") betterlockscreen -l ;; #TODO: Edit betterlockscreen
    "$suspend") exit 1 ;; # TODO: Implement suspend and logout
    "$logout") exit 1;;
esac
