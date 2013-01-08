cd %home%
copy .dotfiles\vim\.vimrc _vimrc
rem copy .dotfiles\vim\_gvimrc _gvimrc
copy .dotfiles\git\.gitconfig .gitconfig
vim +":source $MYVIMRC" +":q"
