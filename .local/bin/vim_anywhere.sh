#!/bin/bash

workdir=$HOME/Documents/vim-notes
tdate=$(date +"%d-%m-%Y")
notefile="$workdir/text-$tdate"

mkdir -p "$workdir"
[[ -f "$notefile" ]] || (echo "Notes for $tdate" > "$notefile") 

chmod  o-r $notefile
alacritty --class floatingTerminal,floatingTerminal --command nvim $notefile # Open floating terminal with file and nvim

[[ $(wc -l "$notefile" | cut -c 1) -eq 1 ]] && rm "$notefile" && exit 0

lastline=$(tac "$notefile" | sed -e '/./,$!d' | head -n 1)

[[ "$lastline" == "Notes for $tdate" ]] && exit 0

tac "$notefile" | sed -e '/./,$!d' | head -n 1 | xclip -sel clip 
notify-send -t 5000 --icon=edit-copy "Vim text copied to clipboard" "$(xclip -o -sel clip)"
