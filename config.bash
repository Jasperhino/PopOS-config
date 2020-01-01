## This Script is My Personal Quick Install for Ubuntu/Mint based systems configs
##

git clone --bare https://github.com/Jasperhino/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles checkout

dconf load / < .dconf

gsettings set org.gnome.desktop.background picture-uri "file:///home/jasper/Pictures/Wallpapers/wallpaper.png"

gsettings set org.gnome.desktop.screensaver picture-uri "file:///home/jasper/Pictures/Wallpapers/lockscreen.jpg"
