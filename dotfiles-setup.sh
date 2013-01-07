#!/bin/bash

echo 'deploying sjas dotfiles...'

### copy things
#bash
cp ~/.dotfiles/bash/.bashrc         ~
cp ~/.dotfiles/bash/.bash_profile   ~
#git
cp ~/.dotfiles/git/.gitconfig       ~
cp ~/.dotfiles/git/.gitk            ~
#keyboard ~
cp ~/.dotfiles/keyboard/.inputrc    ~
cp ~/.dotfiles/keyboard/.xinitrc    ~
cp ~/.dotfiles/keyboard/.xmodmaprc  ~
cp ~/.dotfiles/keyboard/.Xkbmap     ~
#vim
cp ~/.dotfiles/vim/.vimrc           ~

echo 'copied sources...'

### sourcing files
#bash
source ~/.bash_profile

#keyboard
# this is for virtual consoles
sudo loadkeys ~/.dotfiles/keyboard/CapsToControl.map.gz
# these do not need to be sourced, they work in X
#source ~/.xmodmaprc
#source ~/.Xkbmap

#vim
vim +':source $MYVIMRC' +':q'

echo '... sources sourced.'
