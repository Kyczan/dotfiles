#!/bin/bash

# load custom theme
xrdb $HOME/.Xresources

numlockx on # turn on numlock
setxkbmap -layout pl -option caps:escape # caps lock works as escape
# urxvtd -q -f -o # run urxvt as a deamon

# run i3
exec i3
