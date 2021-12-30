#!/bin/sh

# This script is meant to be run on startup to do some key related configuration

# Increasing key speed via rate change
xset r rate 300 50

# Setting caps lock as super and double shift as caps lock
setxkbmap -model pc105 -layout br -variant thinkpad -option caps:super -option shift:both_capslock

# When caps lock is pressed only once, treat it as super
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape'


