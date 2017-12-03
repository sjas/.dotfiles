#!/bin/bash
set -euo pipefail; IFS=$'\n\t'
#set -x


# automatically provision dotfiles / packages on 16.04


#env
SS_BASEPATH=/home/sjas  ## only change if username differs
export DOTFILES=$SS_BASEPATH/.dotfiles  ## only change if dotfile folder is not called '.dotfiles'
TERMINATOR_FILE=.config/terminator/config


#packages
#sudo apt update
sudo apt install -y \
\
bash-completion \
colordiff \
emacs \
etckeeper \
ethtool \
freerdp-x11 \
git \
htop \
lnav \
nload \
openvpn \
tree \
vim \
whois \
&>/dev/null


# link files
#persist DOTFILES env var export
grep -qe "^export DOTFILES=$DOTFILES" $DOTFILES/.bashrc_env || echo -e "\nexport DOTFILES=$DOTFILES" >> $DOTFILES/.bashrc_env
grep -qe "^. $DOTFILES/.bashrc_main" $SS_BASEPATH/.bashrc || echo ". $DOTFILES/.bashrc_main && echo '[+] .bashrc reloaded" >> $SS_BASEPATH/.bashrc
[ -h $SS_BASEPATH/dl ] || ln -s $SS_BASEPATH/Downloads $SS_BASEPATH/dl
echo -e "export DOTFILES=$DOTFILES\n. $DOTFILES/.bashrc_main" > $DOTFILES/.bashrc
rm -rf $SS_BASEPATH/.bashrc && ln -s $DOTFILES/.bashrc $SS_BASEPATH/.bashrc
rm -rf $SS_BASEPATH/.vimrc && ln -s $DOTFILES/.vimrc $SS_BASEPATH/.vimrc
rm -rf $SS_BASEPATH/$TERMINATOR_FILE && mkdir -p $(dirname $SS_BASEPATH/$TERMINATOR_FILE) && ln -s $DOTFILES/$TERMINATOR_FILE $SS_BASEPATH/$TERMINATOR_FILE

#set +e
. $SS_BASEPATH/.bashrc
