#!/bin/bash
# vimman.sh
#
# dmelliot, (12-08-07)
#
# Use vim as the man page viewer
#   - Shows man pages with color coding
#	- Allows hyperlinks to other man pages
#	- Space (page down) and q (quit) work as expected
# 	- Folding is enabled by default (remove fold commands to disable)
#
# Requirements:
#	- Alias man="path to this script"
#	- Source the Vim Man plugin from: $VIMRUNTIME/ftplugin/man.vim
#		- This is usually at "/usr/share/vim/vimcurrent/ftplugin/man.vim but
#		may vary.
#		- Add the following to your Vim rc file
#			source /usr/share/vim/vimcurrent/ftplugin/man.vim
vim -R -c ":set foldmethod=indent" -c ":set foldnestmax=2" -c ":set foldenable" -c ":Man $1" -c ":normal " -c ":q" -c ":set nomodifiable" -c ":map <space> [6~" -c ":map b [5~]" -c ":set foldlevel=0" -c "set nolist"
#vim -R -c ":set foldlevel=0" -c "set foldnestmax=2" -c "set nolist" -c ":set foldmethod=indent" -c ":set foldenable" -c ":Man $1" -c ":normal " -c ":set nomodifiable" -c ":map <space> [6~" -c ":map b [5~]"
