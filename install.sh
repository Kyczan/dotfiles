#!/bin/bash

# path to dotfiles
DOTS=~/Projects/dotfiles

# install lot of apps
sudo pacman -S curl gvim rofi i3blocks i3lock feh lxappearance gnome-terminal pulseaudio playerctl compton acpi scrot numlockx chromium zsh

# install yaourt
cd ~
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si
cd ..
sudo rm -dR yaourt/ package-query/

# create dir for screenshots
mkdir ~/Pictures/screenshots

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# add gpg keys needed by spotify
gpg --recv-keys --keyserver hkp://pgp.mit.edu D9C4D26D0E604491
gpg --recv-keys 5CC908FDB71E12C2

# install AUR packages
yaourt -S system-san-francisco-font-git ttf-ms-fonts ttf-font-awesome paper-gtk-theme-git paper-icon-theme-git imagemagick xss-lock-git visual-studio-code spotify chromium-widevine

# symlink i3
rm -rf ~/.config/i3
ln -s $DOTS/i3 ~/.config

# symlink aliases
ln -s $DOTS/.aliases ~/
echo "source $HOME/.aliases" >> ~/.zshrc
source ~/.zshrc

# symlink vimrc
ln -s $DOTS/.vimrc ~/

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install dracula theme
git clone git@github.com:dracula/vim.git ~/.vim/bundle/dracula-theme

# install CtrlP
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

# install NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Done-Press enter"
read
