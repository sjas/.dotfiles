#
#
#     s  j  a  s     .  b  a  s  h  _  p  r  o  f  i  l  e
#
#

#   c o p y   p a s t e   f r o m   / e t c / b a s h r c
# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi
PS1='\h:\W \u\$ '
# Make bash check its window size after a process completes
shopt -s checkwinsize
# # # # # # # # # # # # # # # # # # # # # # # # # # # # #


#get os type first
if [[ `uname` == Darwin* ]];
	then export MYOS="mac";
fi
# # # # # # # # # # # # # # # # # # # # #
# SOURCE GLOBAL DEFINITIONS
	if [ -f /etc/bashrc ]; then
		. /etc/bashrc
	fi

	if [ -f ~/.bashrc ]; then
		. ~/.bashrc
	fi

# emacs like editing at bash promt
# <C-x><C-e> opens command in vim
	set -o emacs
# PAGER settings
	export VISUAL=vim
	export EDITOR=vim
	export PAGER="less"
# CDPATH
#	export CDPATH='.:..:../..:~'
# MUTT settings - do not seem to work with portage prefix at the time being
	#export SENDMAIL="/Users/spark/Gentoo/usr/sbin/sendmail"
	#export MAILPATH="/Users/spark/Gentoo/var/spool/mail"
	#export PKGDATADIR="/Users/spark/Gentoo/usr/share/mutt"
	#export SYSCONFDIR="/Users/spark/Gentoo/etc/mutt"
	#export EXECSHELL="/Users/spark/Gentoo/bin/sh"
#	export SENDMAIL="~/Gentoo/usr/sbin/sendmail"
#	export MAILPATH="~/mail"
#	export PKGDATADIR="~/Gentoo/usr/share/mutt"
#	export SYSCONFDIR="~/mail/.mutt"
#	export EXECSHELL="~/Gentoo/bin/bash"

# prompt
	# base layout:
	# PS1='[\u@\H \W]\$'
	# \e[37;40m equals 'white on black'
	# \e[32;40m equals 'green on black'
	# but background color can be omitted
	# when using 1m font will be bold
	# and further all non-printing chars (not part of base layout)
	# should be enveloped in '\[ \]'...
	# ... if it is not, strange errors may occur:
	# deleting the prompt with backspace after having typed something?
	# afterwards use '\[\e[0m\]' to reset things for following line...
	# 31 = red
	# 32 = green
	# 33 = yellow
	# 36 = cyan
	PS1='\[\e[31;1m\][\[\e[37;1m\]\u\[\e[33;1m\]@\[\e[37;1m\]\H \[\e[32;1m\]\W\[\e[31;1m\]]\[\e[36;1m\]\$ \[\e[0m\]'
	export PS1="$PS1"
# # # # # # # # # # # # # # # # # # #


# less
	# ignorecase in search, status, no bell
	  # -I ignorecase
	  # -F text amounts lesser than one page are not shown
	  # -J status column at left edge of screen
	  # -m -M long prompt
	  # -N line numbers
	  # -n no line numbers
	  # -q quiet (no bell rung)
	  # -w hilite unread
	#export LESS="-q -J -I" # DONT, else git log output is b/w...

     # LESS COLORS FOR MAN PAGES
        export LESS_TERMCAP_mb=$'\E[1;31m'       # begin blinking
     # CHANGE FIRST NUMBER PAIR FOR COMMAND AND FLAG COLOR
        export LESS_TERMCAP_md=$'\E[0;32;5;74m'  # begin bold... now Green
     # CHANGE FIRST NUMBER PAIR FOR PARAMETER COLOR
        export LESS_TERMCAP_us=$'\E[1;33;5;146m' # begin underline ... now Yellow
        export LESS_TERMCAP_me=$'\E[0m'           # end mode
        export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
        export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
        export LESS_TERMCAP_ue=$'\E[0m'           # end underline
     
     #########################################
     # Colorcodes:
     # Black       0;30     Dark Gray     1;30
     # Red         0;31     Light Red     1;31
     # Green       0;32     Light Green   1;32
     # Brown       0;33     Yellow        1;33
     # Blue        0;34     Light Blue    1;34
     # Purple      0;35     Light Purple  1;35
     # Cyan        0;36     Light Cyan    1;36
     # Light Gray  0;37     White         1;37
     #########################################
# # # # # # # # # # # # # # # # # # #


#include fasteditaliases / aliases / gitaliases
	source ~/.dotfiles/bash/fasteditaliases
	source ~/.dotfiles/bash/aliases
	source ~/.dotfiles/bash/gitaliases
# # # # # # # # # # # # # # # # # # # # #


#PORTAGE PREFIX SETTINGS (Gentoo Package Manager used on Mac OSX)
# http://www.gentoo.org/proj/en/gentoo-alt/prefix/bootstrap-macos.xml
#	export EPREFIX="$HOME/Gentoo"
#	export CHOST="x86_64-apple-darwin10"
#	export PATH="$PATH:$EPREFIX/usr/bin:$EPREFIX/bin:$EPREFIX/tmp/usr/bin:$EPREFIX/tmp/bin"

##
# Your previous /Users/spark/.bash_profile file was backed up as /Users/spark/.bash_profile.macports-saved_2012-08-04_at_18:52:54
##

# MacPorts Installer addition on 2012-08-04_at_18:52:54: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

