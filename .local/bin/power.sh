#!/usr/bin/env sh

poweroff="⏻ Power off"
reboot="🗘 Reboot"
lock="🔒Lock"
suspend="⚑ Suspend"
logout="🚪 Log out"

chosen=$(printf '%s;%s;%s;%s;%s\n' "$poweroff" "$reboot" "$lock" "$suspend" "$logout" \
| rofi -dmenu -l 5 -sep ';' -p "power menu" -i)

case "$chosen" in
    "$poweroff") rofi-prompt.sh --query "Power off the computer?" && poweroff ;;
    "$reboot") rofi-prompt.sh --query "Reboot the computer?" && reboot ;;
    "$lock") betterlockscreen -l ;; #TODO: Edit betterlockscreen
    "$suspend") exit 1 ;; # TODO: Implement suspend and logout
    "$logout") exit 1;;
esac
