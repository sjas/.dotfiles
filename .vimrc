"se backupdir=$TEMP
"se directory=$TEMP



syn on
se hls
se is
se ic
se noai



" spacebar, entered via ctrl_v,<space>
let mapleader = ' '
let maplocalleader = ' '

nnoremap <leader>fs :w<cr>
nnoremap <leader>bd :q<cr>
nnoremap <leader>qq :qall!<cr>
nnoremap <leader>fed :e $MYVIMRC<cr>
nnoremap <leader>feR :source $MYVIMRC<cr>



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
\<cr>set -euo pipefail; IFS=$'\n\t'
\<cr>#set -x
\<cr>

