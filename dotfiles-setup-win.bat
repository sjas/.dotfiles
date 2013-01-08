cd %home%
copy .dotfiles\vim\.vimrc _vimrc
rem copy .dotfiles\vim\_gvimrc _gvimrc
vim +":source $MYVIMRC" +":q"
