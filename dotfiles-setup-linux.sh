#!/bin/bash

echo 'deploying sjas dotfiles...'



echo 'COPY'
cp ~/.dotfiles/vim/.vimrc            ~
cp -R ~/.dotfiles/vim/.vim           ~
cp ~/.dotfiles/emacs/.emacs          ~

cp ~/.dotfiles/git/.gitconfig       ~
cp ~/.dotfiles/git/.gitk            ~

cp ~/.dotfiles/zsh/.zshrc            ~
cp ~/.dotfiles/bash/.bashrc         ~
cp ~/.dotfiles/bash/.bash_profile   ~

cp ~/.dotfiles/keyboard/.inputrc    ~
cp ~/.dotfiles/keyboard/.CapsToControl.map.gz ~
cp ~/.dotfiles/keyboard/.xinitrc    ~
cp ~/.dotfiles/keyboard/.xmodmaprc  ~
cp ~/.dotfiles/keyboard/.Xkbmap     ~

echo 'ACTIVATE'
sudo loadkeys ~/.CapsToControl.map.gz 
vim +':source $MYVIMRC' +':q'
source ~/.xmodmaprc
source ~/.Xkbmap
source ~/.bash_profile



echo 'deployed everything.'
