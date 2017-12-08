syn on
se hls
se is
se ic
se ai
se nonu

"se backupdir=$TEMP
"se directory=$TEMP


" LEADER bindings
" spacebar, entered via ctrl_v,<space>
let mapleader = ' '
let maplocalleader = ','

" SPACEMACS bindings
nnoremap <leader>fs :w<cr>
nnoremap <leader>ffs :w !sudo tee %<cr><cr>L<cr>
nnoremap <leader>bd :q<cr>
nnoremap <leader>bN :vnew<cr>
nnoremap <leader>fqq :wq!<cr>
nnoremap <leader>qq :qall!<cr>
nnoremap <leader>fed :e $MYVIMRC<cr>
nnoremap <leader>feR :source $MYVIMRC<cr>
nnoremap <leader>cl :s/^/#/<cr>/asdf<cr>
nnoremap <leader>tn :se nu!<cr>

"vnoremap < <gv
"vnoremap > <gv


nnoremap  <leader>ev  :vs $DOTFILES/.vimrc<cr>
nnoremap  <leader>ebd :vs $DOTFILES/main.sh<cr>
nnoremap  <leader>ebp :vs $DOTFILES/.bashrc_packages<cr>
nnoremap   <leader>eb :vs $DOTFILES/.bashrc<cr>
nnoremap  <leader>eba :vs $DOTFILES/.bashrc_aliases<cr>
nnoremap  <leader>ebe :vs $DOTFILES/.bashrc_env<cr>
nnoremap  <leader>ebg :vs $DOTFILES/.bashrc_git<cr>
nnoremap  <leader>ebm :vs $DOTFILES/.bashrc_main<cr>


"alias  rebd="(cd $DOTFILES; ./main.sh)"
"alias    et="vim $DOTFILES/../.todo"



" SHEBANGS
ab gosb //usr/bin/env go run $0 $@; exit $?
\<cr>
\<cr>package main
\<cr>
\<cr>import (
\<cr>	"fmt"
\<cr>)
\<cr>
\<cr>func main() {
\<cr>
\<cr>}

ab bashsb #!/bin/bash
\<cr>#set -euo pipefail; IFS=$'\n\t'
\<cr>#set -x
\<cr>
