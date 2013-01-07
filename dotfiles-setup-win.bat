cd %home%
copy .dotfiles\vim\.vimrc _vimrc
vim +":source $MYVIMRC" +":q"
