cd %home%
cd .dotfiles/vim
copy .vimrc %home%\_vimrc
vim +':source $MYVIMRC' +':q'
