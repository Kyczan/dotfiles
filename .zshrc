
PATH="$HOME/bin:$PATH"
export PATH

# My variables
export MY_EDITOR="code-oss"
export MY_EDITOR_CLASS="Code"

# Path to your oh-my-zsh installation.
export ZSH=/home/kowal/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bira"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh
autoload -Uz promptinit
promptinit

source $HOME/.aliases

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
