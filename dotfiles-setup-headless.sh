#!/bin/bash

echo 'deploying sjas dotfiles on a headless linux...'



echo 'COPY'
cp ~/.dotfiles/vim/.vimrc            ~
cp -R ~/.dotfiles/vim/.vim           ~
cp ~/.dotfiles/emacs/.emacs          ~

cp ~/.dotfiles/git/.gitconfig        ~


cp ~/.dotfiles/zsh/.zshrc            ~
cp ~/.dotfiles/zsh/.zsh_profile      ~
cp ~/.dotfiles/bash/.bashrc          ~
cp ~/.dotfiles/bash/.bash_profile    ~

cp ~/.dotfiles/keyboard/.inputrc     ~
cp ~/.dotfiles/keyboard/.CapsToControl.map.gz ~

# fix colorscheme in vim
echo 'colo desert' >> .vimrc

echo 'ACTIVATE'
sudo loadkeys ~/.CapsToControl.map.gz

source ~/.bash_profile
source ~/.zsh_profile
vim +':source $MYVIMRC' +':q'




echo 'deployed everything.'
