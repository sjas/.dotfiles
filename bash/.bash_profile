#
#
#     s  j  a  s     .  b  a  s  h  _  p  r  o  f  i  l  e
#
#

# Make bash check its window size after a process completes
shopt -s checkwinsize
# # # # # # # # # # # # # # # # # # # # # # # # # # # # #

sudo loadkeys ~/.dotfiles/keyboard/CapsToControl.map.gz

# # # # # # # # # # # # # # # # # # # # #
# SOURCE GLOBAL DEFINITIONS
    if [ -f /etc/bashrc ]; then
        . /etc/bashrc
    fi

    if [ -f ~/.bashrc ]; then
        . ~/.bashrc
    fi

# MUTT settings - do not seem to work with portage prefix at the time being
    #export SENDMAIL="/Users/spark/Gentoo/usr/sbin/sendmail"
    #export MAILPATH="/Users/spark/Gentoo/var/spool/mail"
    #export PKGDATADIR="/Users/spark/Gentoo/usr/share/mutt"
    #export SYSCONFDIR="/Users/spark/Gentoo/etc/mutt"
    #export EXECSHELL="/Users/spark/Gentoo/bin/sh"
#   export SENDMAIL="~/Gentoo/usr/sbin/sendmail"
#   export MAILPATH="~/mail"
#   export PKGDATADIR="~/Gentoo/usr/share/mutt"
#   export SYSCONFDIR="~/mail/.mutt"
#   export EXECSHELL="~/Gentoo/bin/bash"



#PORTAGE PREFIX SETTINGS (Gentoo Package Manager used on Mac OSX)
# http://www.gentoo.org/proj/en/gentoo-alt/prefix/bootstrap-macos.xml
#   export EPREFIX="$HOME/Gentoo"
#   export CHOST="x86_64-apple-darwin10"
#   export PATH="$PATH:$EPREFIX/usr/bin:$EPREFIX/bin:$EPREFIX/tmp/usr/bin:$EPREFIX/tmp/bin"

##
# Your previous /Users/spark/.bash_profile file was backed up as /Users/spark/.bash_profile.macports-saved_2012-08-04_at_18:52:54
##

# MacPorts Installer addition on 2012-08-04_at_18:52:54: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

