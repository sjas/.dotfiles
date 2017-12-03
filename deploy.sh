#!/bin/bash

# automatically provisioning 

sudo apt update
sudo apt install colordiff git bash-completion whois -y

grep -q '. /home/sjas/.dotfiles/.bashrc_main' /home/sjas/.bashrc || echo '. /home/sjas/.dotfiles/.bashrc_main' >> /home/sjas/.bashrc
[ -L /home/sjas/.vimrc ] || ln -s /home/sjas/.dotfiles/.vimrc /home/sjas/.vimrc
[ -L /home/sjas/.config/terminator/config ] || mkdir -p /home/sjas/.config/terminator && ln -s /home/sjas/.dotfiles/.config/terminator/config /home/sjas/.config/terminator/config
