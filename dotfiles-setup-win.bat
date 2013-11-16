

REM deploying sjas dotfiles on a windows with cygwin

cd %home%

REM COPY
cp .dotfiles\vim\.vimrc .vimrc
cp -R .dotfiles/vim/.vim .
cp .dotfiles\emacs\.emacs .emacs

cp .dotfiles\git\.gitconfig .gitconfig


cp .dotfiles\zsh\.zshrc .zshrc
cp .dotfiles\bash\.bashrc .bashrc
cp .dotfiles\bash\.bash_profile .bash_profile







REM ACTIVATE

vim +":source $MYVIMRC" +":q"

cd .dotfiles




REM deployed everyting.
