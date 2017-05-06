# dotfiles
my configuration dotfiles

## i3
To run properly i3 based on this configuration you have to install following programs:
* `yaourt` ([installation instructions](https://www.ostechnix.com/install-yaourt-arch-linux/); for installing AUR packages)
* `rofi` (for searching and launching apps)
* `i3blocks` (for bar with custom informations)
* `i3lock` (for locking screen)
* `feh` (for setting wallpaper; put wallpaper to `~/Pictures/wallpaper.jpg`)
* `system-san-francisco-font-git`, `ttf-ms-fonts` (AUR; system font)
* `ttf-font-awesome` (AUR; font with nice icons)
* `paper-gtk-theme-git`, `paper-icon-theme-git` (AUR; Paper System Theme - nice theme)
* `lxappearance` (for changing system font and theme; change font in `~/.gtkrc-2.0` and in `~/.config/gtk-3.0/settings.ini`)
* `gnome-terminal` (select theme solarized-dark and change background to `#282a36`)
* `zsh`
* `oh-my-zsh` ([installation instructions](https://github.com/robbyrussell/oh-my-zsh); in `~/.zshrc` set `ZSH_THEME="bira"`)
* `pulseaudio` (for audio control)
* `playerctl` (also for audio control)
* `imagemagick` (AUR; for converting images to set them as lock screen)
* `compton` (for nice transitions)
* `acpi` (for getting battery info)
* `scrot` (for making screenshots; also create directory `~/Pictures/screenshots`)
* `xss-lock-git` (AUR; for locking screen after suspend. To suspend after closing lid, go to `/etc/systemd/logind.conf`, uncomment `HandleLidSwitch=suspend`)
* `chromium`
* `visual-studio-code` (AUR; nice editor for programmers)
* `spotify` (AUR)

It is worth to male symlink from repo to i3 config folder (assuming that i3 config is in `~/.config/i3`):
```
rm -rf ~/.config/i3
ln -s ~/path/to/repo/dotfiles/i3 ~/.config
```
## .aliases
To get to work `.aliases` create symlink:
```
ln -s ~/path/to/repo/dotfiles/.aliases ~/
```
Next, add in `.zshrc` following line:
```
source $HOME/.aliases
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

