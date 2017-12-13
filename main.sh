#!/bin/bash
#set -euo pipefail
#IFS='\n\t'
#set -x


# automatically provision dotfiles / packages on 16.04


#env
SSHOME="/home/sjas"
export DF="$SSHOME/.dotfiles"

TERMINATOR_FILE=.config/terminator/config

. ${DF}/.bashrc_packages

[ -d $SSHOME/.emacs.d/private/apprentice-theme ] || ( cd ~/.emacs.d/private ; git clone -v --progress https://github.com/sjas/apprentice-theme )

[ -d $SSHOME/.emacs.d ] || ( cd $SSHOME; git clone https://github.com/syl20bnr/spacemacs $SSHOME/.emacs.d )

# link files and persist DF env var export
grep -qe "^export DF=$DF" $DF/.bashrc_env || echo -e "\nexport DF=$DF" >> $DF/.bashrc_env
grep -qe "^. $DF/.bashrc_main" $SSHOME/.bashrc || echo ". $DF/.bashrc_main && echo '[+] .bashrc reloaded" >> $SSHOME/.bashrc
[ -h $SSHOME/dl ] || ln -s $SSHOME/Downloads $SSHOME/dl
echo -e "export DF=$DF\n. $DF/.bashrc_main" > $DF/.bashrc
sudo rm -rf $SSHOME/.bashrc && ln -s $DF/.bashrc $SSHOME/.bashrc
sudo rm -rf $SSHOME/.vimrc && ln -s $DF/.vimrc $SSHOME/.vimrc
sudo rm -rf $SSHOME/.spacemacs && ln -s $DF/.spacemacs $SSHOME/.spacemacs
sudo rm -rf $SSHOME/$TERMINATOR_FILE && mkdir -p $(dirname $SSHOME/$TERMINATOR_FILE) && ln -s $DF/$TERMINATOR_FILE $SSHOME/$TERMINATOR_FILE

sudo rm -rf /root/.bashrc && sudo ln -s $DF/.bashrc /root/.bashrc 
sudo rm -rf /root/.vimrc && sudo ln -s $DF/.vimrc /root/.vimrc 

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
