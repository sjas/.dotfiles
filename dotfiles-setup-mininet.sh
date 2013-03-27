#!/bin/bash

cp ~/.dotfiles/bash/.bashrc         ~
#cp ~/.dotfiles/bash/.bash_profile   ~
cp ~/.dotfiles/git/.gitconfig       ~
#cp ~/.dotfiles/git/.gitk            ~
cp ~/.dotfiles/keyboard/.inputrc    ~
cp ~/.dotfiles/vim/.vimrc           ~
cp -R ~/.dotfiles/vim/.vim ~

source ~/.bash_profile

# this is for virtual consoles
sudo loadkeys ~/.dotfiles/keyboard/CapsToControl.map.gz
# these do not need to be sourced, they work in X
#source ~/.xmodmaprc
#source ~/.Xkbmap

echo 'colo desert' >> .vimrc

vim +':source $MYVIMRC' +':q'
