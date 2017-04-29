# dotfiles
my configuration dotfiles

## i3
To run properly i3 based on this configuration you have to install following programs:
* rofi (for searching and launching apps)
* i3blocks (for bar with custom informations)
* i3lock (for locking screen)
* feh (for setting wallpaper; put wallpaper to `~/Pictures/wallpaper.jpg`)
* font System San Francisco Display (move it to `~/.fonts` folder)
* ttf-font-awesome (AUR; font with nice icons)
* Paper System Theme
* lxappearance (for changing system font and theme; change font in `~/.gtkrc-2.0` and in `~/.config/gtk-3.0/settings.ini`)
* gnome-terminal
* pulseaudio (for audio control)
* playerctl (also for audio control)
* imagemagick (for converting images to set them as lock screen)
* compton (for nice transitions)
* acpi (for getting battery info)
* scrot (for making screenshots)
* xss-lock-git (AUR; for locking screen after suspend. To suspend after closing lid, go to `/etc/systemd/logind.conf`, uncomment `HandleLidSwitch=suspend`)

It is worth to male symlink from repo to i3 config folder (assuming that i3 config is in `~/.config/i3`):
```
rm -rf ~/.config/i3
ln -s ~/path/to/repo/dotfiles/i3 ~/.config
```
## aliases
To get to work `.aliases` create symlink:
```
ln -s ~/path/to/repo/dotfiles/.aliases ~/
```
Next, add in `.zshrc` following line:
```
source $HOME/.aliases
```
