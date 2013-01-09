cd %home%
cp .dotfiles\vim\.vimrc _vimrc
cp .dotfiles\git\.gitconfig .gitconfig
cp -R .dotfiles\vim\.vim\ .
vim +":source $MYVIMRC" +":q"
