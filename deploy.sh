#!/bin/bash

grep -q '. /home/sjas/.dotfiles/.bashrc_main' /home/sjas/.bashrc || echo '. /home/sjas/.dotfiles/.bashrc_main' >> /home/sjas/.bashrc
[ ! -L /home/sjas/.vimrc ] && ln -s /home/sjas/.dotfiles/.vimrc /home/sjas/.vimrc
[ ! -L /home/sjas/.config/terminator ] && mkdir -p /home/sjas/.config && ln -s /home/sjas/.dotfiles/.config/terminator /home/sjas/.config/terminator
