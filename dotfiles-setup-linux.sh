#!/bin/bash

echo 'deploying sjas dotfiles...'



echo 'COPY'
cp ~/.dotfiles/vim/.vimrc           ~
cp -R ~/.dotfiles/vim/.vim          ~
cp ~/.dotfiles/emacs/.emacs         ~

cp ~/.dotfiles/git/.gitconfig       ~
cp ~/.dotfiles/git/.gitk            ~

cp ~/.dotfiles/zsh/.zshrc           ~
cp ~/.dotfiles/zsh/.zsh_profile     ~
cp ~/.dotfiles/zsh/.zlogout         ~
cp ~/.dotfiles/bash/.bashrc         ~
cp ~/.dotfiles/bash/.bash_profile   ~
cp ~/.dotfiles/bash/.bash_logout    ~

cp ~/.dotfiles/keyboard/.inputrc    ~
cp ~/.dotfiles/keyboard/.CapsToControl.map.gz ~
cp ~/.dotfiles/keyboard/.xinitrc    ~
cp ~/.dotfiles/keyboard/.Xmodmap    ~
cp ~/.dotfiles/keyboard/.Xresources ~

mkdir -p ~/.vimsessions

echo 'ACTIVATE'
sudo loadkeys ~/.CapsToControl.map.gz 
source ~/.xinitrc
source ~/.bash_profile
source ~/.zsh_profile
vim +':source $MYVIMRC' +':q'



echo 'deployed everything.'
