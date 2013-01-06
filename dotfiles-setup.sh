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
cp ~/.dotfiles/keyboard/.Xkbmap     ~
cp ~/.dotfiles/keyboard/.xmodmaprc  ~
cp ~/.dotfiles/keyboard/.inputrc    ~
#vim
cp ~/.dotfiles/vim/.vimrc           ~

echo 'copied sources...'

### sourcing files
#bash
source ~/.bash_profile

#keyboard
source ~/.xmodmaprc
source ~/.Xkbmap

#vim
source ~/.vimrc

echo '... sources sourced.'
