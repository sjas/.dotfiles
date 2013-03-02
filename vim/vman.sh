#!/bin/bash
# vimman.sh
#
# dmelliot, (12-08-07)
#
# Use vim as the man page viewer
#   - Shows man pages with color coding
#   - Allows hyperlinks to other man pages
#   - Space (page down) and q (quit) work as expected
#   - Folding is enabled by default (remove fold commands to disable)
#
# Requirements:
#   - Source the Vim Man plugin from: $VIMRUNTIME/ftplugin/man.vim
#       - This is usually at "/usr/share/vim/vimcurrent/ftplugin/man.vim but
#       may vary depending on your vim's installation point
#       - Add the following to your Vim rc file
#           source /usr/share/vim/vimcurrent/ftplugin/man.vim
#   - this is just for convenient usage:
#     (to make the setting stick, put next line into your .bashrc)
#     alias man="<path to this script>"
vim -R -c ":set foldmethod=indent" -c ":set foldnestmax=2" -c ":set foldenable" -c ":Man $1" -c ":normal " -c ":q" -c ":set nomodifiable" -c ":set foldlevel=0" -c ":set nolist"
