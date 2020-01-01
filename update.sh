#!/bin/sh
cd ~
dconf dump / > .dconf
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles add -u
dotfiles commit -m "Update config files"
dotfiles push