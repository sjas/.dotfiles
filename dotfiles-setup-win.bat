cd %home%
cp .dotfiles\vim\.vimrc _vimrc
cp .dotfiles\git\.gitconfig .gitconfig

cp -R .dotfiles/vim/.vim .

cp .dotfiles\bash\.bashrc .bashrc
cp .dotfiles\bash\.bash_profile .bash_profile
cp .dotfiles\zsh\.zshrc .zshrc

vim +":source $MYVIMRC" +":q"

cd .dotfiles
