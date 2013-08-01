#!/bin/bash

#
# deploys my dotfiles on a headless linux with bash shell
#

#go to home folder
cd
#set gitconfig
cp ~/.dotfiles/git/.gitconfig        .
#cp ~/.dotfiles/git/.gitk              .
#set up vim and plugins
cp ~/.dotfiles/vim/.vimrc           .
cp -R ~/.dotfiles/vim/.vim 	     .

#fix the bash shell
cp ~/.dotfiles/bash/.bashrc          .bashrc
#cp ~/.dotfiles/bash/.bash_profile    .bash_profile
cp ~/.dotfiles/keyboard/.inputrc     .inputrc

source ~/.bash_profile


# these do not need to be sourced, they work in X
#source ~/.xmodmaprc
#source ~/.Xkbmap
# this is for virtual consoles
#sudo loadkeys ~/.dotfiles/keyboard/CapsToControl.map.gz

#DEAD
#echo 'colo desert' >> .vimrc

vim +':source $MYVIMRC' +':q'
