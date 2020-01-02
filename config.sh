#!/bin/sh
cd ~
git clone --bare https://github.com/Jasperhino/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout -f

dconf load / < $HOME/.dconf

gsettings set org.gnome.desktop.background picture-uri "file:///home/$USER/Pictures/Wallpapers/wallpaper.png"
gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/$USER/Pictures/Wallpapers/lockscreen.jpg"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install zsh
chsh -s $(which zsh)
reboot
