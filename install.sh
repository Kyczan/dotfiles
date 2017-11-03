#!/bin/bash

# path to dotfiles
DOTS=~/Projects/dotfiles

# install lot of apps
sudo pacman -S --needed --noconfirm curl gvim rofi i3blocks i3lock feh lxappearance termite pulseaudio playerctl compton acpi scrot numlockx chromium zsh

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

# symlink termite config
ln -s $DOTS/termite ~/.config

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

# install dracula theme for gnome terminal
cd ~/Projects
git clone https://github.com/GalaticStryder/gnome-terminal-colors-dracula
cd gnome-terminal-colors-dracula
./install.sh

# install zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# need to activate plugin in ~/.zshrc
# plugins=( [plugins...] zsh-syntax-highlighting)
# source ~/.zshrc

echo "Done-Press enter"
read
