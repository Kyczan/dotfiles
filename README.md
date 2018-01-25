# dotfiles
my configuration dotfiles

- [dotfiles](#dotfiles)
    - [i3](#i3)
        - [i3 scripts](#i3-scripts)
            - [weather](#weather)
    - [termite](#termite)
    - [.aliases](#aliases)
    - [.zshrc](#zshrc)
    - [.vimrc](#vimrc)

`install.sh` installs below applications and does some configuration. Use it without any warranty!

## i3
To run properly i3 based on this configuration you have to install following programs:
* `yaourt` ([installation instructions](https://www.ostechnix.com/install-yaourt-arch-linux/); for installing AUR packages)
* `rofi` (for searching and launching apps)
* `i3blocks` (for bar with custom informations)
* `i3lock` (for locking screen)
* `feh` (for setting wallpaper; put wallpaper to `~/Pictures/wallpaper.jpg`)
* `system-san-francisco-font-git`, `ttf-ms-fonts` (AUR; system font)
* `ttf-font-awesome-4` (AUR; font with nice icons - use v4 - v5 breaks compatibility)
* `paper-gtk-theme-git`, `paper-icon-theme-git` (AUR; Paper System Theme - nice theme)
* `lxappearance` (for changing system font and theme; change font in `~/.gtkrc-2.0` and in `~/.config/gtk-3.0/settings.ini`)
* `termite`
* `zsh`
* `oh-my-zsh` ([installation instructions](https://github.com/robbyrussell/oh-my-zsh); in `~/.zshrc` set `ZSH_THEME="bira"`)
* `pulseaudio` (for audio control)
* `playerctl` (also for audio control)
* `imagemagick` (AUR; for converting images to set them as lock screen)
* `compton` (for nice transitions)
* `acpi` (for getting battery info)
* `scrot` (for making screenshots; also create directory `~/Pictures/screenshots`)
* `xss-lock-git` (AUR; for locking screen after suspend. To suspend after closing lid, go to `/etc/systemd/logind.conf`, uncomment `HandleLidSwitch=suspend`)
* `numlockx` (for turning on numlock on start)
* `chromium`
* `visual-studio-code` (AUR; nice editor for programmers)
* `spotify` (AUR), before installing add following gpg keys:
```
gpg --recv-keys --keyserver hkp://pgp.mit.edu D9C4D26D0E604491
gpg --recv-keys 5CC908FDB71E12C2
```

It is worth to male symlink from repo to i3 config folder (assuming that i3 config is in `~/.config/i3`):
```
rm -rf ~/.config/i3
ln -s ~/path/to/repo/dotfiles/i3 ~/.config
```

### i3 scripts

#### weather
Make account on openweathermap.org and obtain API key. Then rename `api.cfg.template` to `api.cfg` and update this file with your API key.

## termite
```
ln -s ~/path/to/repo/dotfiles/termite ~/.config
```
## .aliases
To get to work `.aliases` create symlink:
```
ln -s ~/path/to/repo/dotfiles/.aliases ~/
```
## .zshrc
To get to work `.zshrc` create symlink:
```
ln -s ~/path/to/repo/dotfiles/.zshrc ~/
```
Then reload `.zshrc`:
```
source ~/.zshrc
```
## .vimrc
Create symlink:
```
ln -s ~/path/to/repo/dotfiles/.vimrc ~/
```
Install [pathogen](https://github.com/tpope/vim-pathogen) for plugins management.
Now you can install:
* [dracula theme](https://draculatheme.com/vim/)
* [CtrlP](https://github.com/kien/ctrlp.vim) (for fuzzy search)
* [NERDTree](https://github.com/scrooloose/nerdtree) (for file tree)

