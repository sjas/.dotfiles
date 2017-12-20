#!/bin/bash
#set -euo pipefail
#IFS='\n\t'
#set -x


# automatically provision dotfiles / packages on 16.04


#env
SSHOME="/home/sjas"
export DOTFILES="$SSHOME/.dotfiles"

TERMINATOR_FILE=.config/terminator/config

. ${DOTFILES}/.bashrc_packages

[ -d $SSHOME/.emacs.d/private/apprentice-theme ] || ( cd ~/.emacs.d/private ; git clone -v --progress https://github.com/sjas/apprentice-theme )
[ -d $SSHOME/.emacs.d ] || ( cd $SSHOME; git clone https://github.com/syl20bnr/spacemacs $SSHOME/.emacs.d )

# link files and persist DOTFILES env var export
grep -qe "^export DOTFILES=$DOTFILES" $DOTFILES/.bashrc_env || echo -e "\nexport DOTFILES=$DOTFILES" >> $DOTFILES/.bashrc_env
grep -qe "^. $DOTFILES/.bashrc_main" $SSHOME/.bashrc || echo ". $DOTFILES/.bashrc_main && echo '[+] .bashrc reloaded" >> $SSHOME/.bashrc
[ -h $SSHOME/dl ] || ln -s $SSHOME/Downloads $SSHOME/dl
echo -e "export DOTFILES=$DOTFILES\n. $DOTFILES/.bashrc_main" > $DOTFILES/.bashrc
sudo rm -rf $SSHOME/.bashrc && ln -s $DOTFILES/.bashrc $SSHOME/.bashrc
sudo rm -rf $SSHOME/.vimrc && ln -s $DOTFILES/.vimrc $SSHOME/.vimrc
sudo rm -rf $SSHOME/.spacemacs && ln -s $DOTFILES/.spacemacs $SSHOME/.spacemacs
sudo rm -rf $SSHOME/$TERMINATOR_FILE && mkdir -p $(dirname $SSHOME/$TERMINATOR_FILE) && ln -s $DOTFILES/$TERMINATOR_FILE $SSHOME/$TERMINATOR_FILE

sudo rm -rf /root/.bashrc && sudo ln -s $DOTFILES/.bashrc /root/.bashrc 
sudo rm -rf /root/.vimrc && sudo ln -s $DOTFILES/.vimrc /root/.vimrc 

. $HOME/.bashrc

if $(sudo dmidecode | grep -q Latitude\ 5480)
then 
        UTMP=/sys/class/leds/dell\:\:kbd_backlight/stop_timeout
        COOLOFFTIME=60s
        [ "x$(sudo cat $UTMP)" = "x$COOLOFFTIME" ] || sudo su -c "echo $COOLOFFTIME > $UTMP"

	if ! $(sudo grep -q ^echo\ $COOLOFFTIME /etc/rc.local)
	then
		sed -i 's,^exit 0,echo 60s > /sys/class/leds/dell\:\:kbd_backlight/stop_timeout\n&,' /etc/rc.local
	fi
fi
