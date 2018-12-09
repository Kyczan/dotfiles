#!/bin/sh

# Profile file. Runs on login.

export PATH="$HOME/bin:$PATH"
# My variables
export MY_EDITOR="code"
export DOTS="$HOME/Projects/dotfiles"
export VISUAL="vim"
export SUDO_ASKPASS=~/bin/password

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start graphical server if i3 not already running.
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi
