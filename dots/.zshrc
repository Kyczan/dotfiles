
PATH="$HOME/bin:$PATH"
export PATH

# My variables
export MY_EDITOR="code"
export MY_EDITOR_CLASS="code"
export DOTS="$HOME/Projects/dotfiles"
export VISUAL="vim"
export SUDO_ASKPASS=~/bin/password

# Path to your oh-my-zsh installation.
export ZSH=/home/kowal/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Plugins
# plugins=(git)

source $ZSH/oh-my-zsh.sh
autoload -Uz promptinit
promptinit

source $HOME/.aliases
xrdb -merge $HOME/.Xresources

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
