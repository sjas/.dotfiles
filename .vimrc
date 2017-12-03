"se backupdir=$TEMP
"se directory=$TEMP

syn on
se hls
se is
se ic
se noai

ab gosb //usr/bin/env go run $0 $@; exit $?
\<CR>
\<CR>package main
\<CR>
\<CR>import	(
\<CR>	"fmt"
\<CR>	)
\<CR>
\<CR>func main() {
\<CR>
\<CR>}

