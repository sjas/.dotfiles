"
"
"     S  J  A  S     M  A  S  T  E  R     .  V  I  M  R  C
"
"
"
"   B A S E   S E T T I N G S   +   V U N D L E   I N T E G R A T I O N
"
" DEFAULT IS '\' FOR LEADER KEY - '<space>' IS MORE ACCESSIBLE
" inserted via <C-v><space>, proper keycode needed!
" define this before any of the plugins is loaded...
let mapleader = ' '
let maplocalleader = ' '
" VUNDLE TO RULE IT ALL: absolutely needs the following
" be iMproved: USE vim NOT vi
se nocompatible
"se shellslash
filetype off "VUNDLE NEEDS THIS HERE
se rtp+=~/.dotfiles/vim/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on "back to normal 
Bundle 'gmarik/vundle'
" fix iterm2 stuff on mac: FocusLost and cursor
Bundle 'sjl/vitality.vim'
" three-way-diffing
" threesome is now called splice...
" and it does not play nicely with fugitive...
"Bundle 'sjl/threesome.vim'
Bundle 'sjl/badwolf'
Bundle 'sjl/gundo.vim'
Bundle 'arpeggio'
Bundle 'YankRing.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/neocomplcache-snippets-complete' Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Raimondi/delimitMate'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Align'
Bundle 'surround.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'SearchComplete'
Bundle 'plasticboy/vim-markdown'
"Bundle 'ShowMarks'
Bundle 'colorizer'
Bundle 'repeat.vim'
Bundle 'FuzzyFinder'
" required for FuzzyFinder
Bundle 'L9'
" proper asciidoc goodness
Bundle 'sjas/asciidoc-vim'
" Haskell plugin
Bundle 'sjas/haskellmode-vim'
"Bundle 'sjas/todo.txt-vim'
Bundle 'workflowish'
" LaTeX Stuff
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
"Bundle 'tomtom/checksyntax_vim'
"Bundle 'tomtom/quickfixsigns_vim'
" ColorScheme Explorer
Bundle 'sjas/csExplorer'
"   C O L O R S C H E M E S
Bundle 'altercation/vim-colors-solarized'
Bundle 'spf13/vim-colors'
Bundle 'nelstrom/vim-mac-classic-theme'
colo badwolf
Bundle 'sjas/ColorSamplerPack'
se magic "how to handle rexexp escaping
" powerline
se ls=2 "always show statusline
se encoding=utf8
se t_Co=256
let g:Powerline_symbols = 'compatible' "'fancy' and 'unicode' settings fuck up


"
"   S E A R C H   S E T T I N G S
"
" SET /g AS DEFAULT, I.E. s/FOO/BAR IS s/FOO/BAR/g
" to turn it off for once, just append the 'g' at the end
se gd "nogd
" EASIER SEARCH AND REPLACE
" JUST TYPE s/ OR ss/ NO MATTER WHAT YOU ARE DOING
" current line 'substitute'
nnoremap s/ :s/
" all lines 'supersubstitute'
nnoremap ss/ :%s/
" in visual mode, this will work expands to: 
" :'<,'>s/
vnoremap s/ :s/
" RESET SEARCH HIGHLIGHTING
"nnoremap <Leader><backspace> :noh<CR><CR>:<BACKSPACE>k
nnoremap <Leader><backspace> /asdf<CR><ESC>
" HIGHLIGHT RESULTS
se hls
" IGNORE CASE
se ic "noic"
" SMARTCASE: SENSITIVE WHEN UC CHAR PRESENT
se scs "noscs"
" SHOW PROPER WHITESPACE
"se listchars=tab:,.,trail:.,extends:#,nbsp:.
se listchars=tab:,.,trail:.,extends:#,nbsp:.,eol:$
"se listchars=eol:$
se list "list nolist
" INCREMENTAL SEARCH
se is "nois"
" WHAT'S SHOWN WHEN SCROLLING
se scrolljump=0 "negative values are in percent
se scrolloff=4 "cursor stays in mid of screen...
" ctags tag list
set tags=./tags;/
" TAB / SPACE / EDITING SETTINGS
" autoindent
se ai "noai"
" tab to spaces a.k.a. expandtab
se et "noet"
" softtabstop for proper backspace use
se sts=4
" shiftwidth: number of spaces for autoindent
se sw=4
" tabstop: how many spaces will be shown for a tab
se ts=8
" TODO rewrite this stuff for python files explicitly!!!
" backspace settings
se backspace=indent,eol,start



"
"   I M P O R T A N T   S H O R T C U T S
"
" SPEED UP THINGS
noremap ; :
" remap the repeat-t/f-search function!
noremap : ;
" FAST q!, wq, w, e!
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>fw :w<CR>
nnoremap <Leader>fa :wa<CR>
nnoremap <Leader>fq :q!<CR>
nnoremap <Leader>fd :e!<CR>
" PROFESSIONALLY OPEN FILES
nnoremap <Leader>fe :e <C-R>=expand('%:t').'/'<cr>
"nnoremap <Leader>fe :e <C-R>=expand('%:h').'/'<cr>
" FAST RUN BINDING
nnoremap <Leader>fr :w<CR>:silent ! %<CR>
" OPEN VERTICAL HELP
nnoremap ;vh :vert help
nnoremap ;hv :vert help
" PRICELESS
nnoremap q; q:
" move proper on wrapped lines
nnoremap j gj
nnoremap k gk
" VISUAL SHIFTING
vnoremap < <gv
vnoremap > >gv
" fix Y behaviour
nnoremap Y y$

" ARPEGGIO SETTINGS TO MY FINGERS AND WRISTS
call arpeggio#load()
" escape
"Arpeggio nnoremap jk <Esc>
Arpeggio inoremap jk <Esc>
Arpeggio vnoremap jk <Esc>
" git
Arpeggio nnoremap gc :Git commit -a<cr>
Arpeggio nnoremap ga :Git add .<cr>
Arpeggio nnoremap gf :Git pull<cr>
Arpeggio nnoremap gu :Git push<cr>
Arpeggio nnoremap gs :Git status<cr>
Arpeggio nnoremap gl :Git log<cr>
Arpeggio nnoremap gd :Gsdiff HEAD<cr>
" WRITE READ-ONLY FILE AS ADMIN
cmap w!! w !sudo tee % >/dev/null

"fast align hack in visual mode
"vnoremap align :Align

" WINDOW MANAGEMENT SETTINGS
"moving from window to window
nnoremap <C-h>  <C-w>h
nnoremap <C-j>  <C-w>j
nnoremap <C-k>  <C-w>k
nnoremap <C-l>  <C-w>l
"open new blank file
nnoremap o<C-h> :lefta vsp new<cr>
nnoremap o<C-j> :bel sp new<cr>
nnoremap o<C-k> :abo sp new<cr>
nnoremap o<C-l> :rightb vsp new<cr>
"move window
nnoremap <Leader><C-h> <C-W>H
nnoremap <Leader><C-j> <C-W>J
nnoremap <Leader><C-k> <C-W>K
nnoremap <Leader><C-l> <C-W>L
"maximise horizontally
map <Leader>= <C-w><Bar>
"maximise vertically
map <Leader>- <C-w>_
"make all windows equally sized
map <Leader><Leader> <C-w>=
"change windowsizes in visual mode
"horizontally - always three chars else it takes ages
vnoremap - 3<C-w><
vnoremap = 3<C-w>>
"vertically - always three chars else it takes ages
vnoremap _ 3<C-w>-
vnoremap + 3<C-w>+
"moving from window to window in visual mode
"that way you can move from window to window and resize with -,=,_,+ directly as needed
vnoremap <C-h> <ESC><C-w>hv
vnoremap <C-j> <ESC><C-w>jv
vnoremap <C-k> <ESC><C-w>kv
vnoremap <C-l> <ESC><C-w>lv

" EASY EDITING OF CONFIG FILES
nnoremap   <Leader>ev :e    ~/.dotfiles/vim/.vimrc<CR>
nnoremap   <Leader>eg :e    ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>eb :e    ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebp :e    ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efea :e    ~/.dotfiles/bash/fasteditaliases<CR>
nnoremap  <Leader>ega :e    ~/.dotfiles/bash/gitaliases<CR>
nnoremap  <Leader>eba :e    ~/.dotfiles/bash/aliases<CR>
nnoremap   <Leader>et :e    ~/.priv/todo.asc<CR>
nnoremap   <Leader>ep :e    ~/.priv/priority.asc<CR>
nnoremap   <Leader>ea :e    ~/.priv/aim.asc<CR>
"in horizontal splitview
nnoremap   <Leader>evt :sp  ~/.dotfiles/vim/.vimrc<CR>
nnoremap   <Leader>egt :sp  ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>ebt :sp  ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebpt :sp  ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efeat :sp  ~/.dotfiles/bash/fasteditaliases<CR>
nnoremap  <Leader>egat :sp  ~/.dotfiles/bash/gitaliases<CR>
nnoremap  <Leader>ebat :sp  ~/.dotfiles/bash/aliases<CR>
nnoremap   <Leader>ett :sp  ~/.priv/todo.asc<CR>
nnoremap   <Leader>ept :sp  ~/.priv/priority.asc<CR>
nnoremap   <Leader>eat :sp  ~/.priv/aim.asc<CR>
"in vertical splitview
nnoremap   <Leader>evv :vsp ~/.dotfiles/vim/.vimrc<CR>
nnoremap   <Leader>egv :vsp ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>ebv :vsp ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebpv :vsp ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efeav :vsp ~/.dotfiles/bash/fasteditaliases<CR>
nnoremap  <Leader>egav :vsp ~/.dotfiles/bash/gitaliases<CR>
nnoremap  <Leader>ebav :vsp ~/.dotfiles/bash/aliases<CR>
nnoremap   <Leader>etv :vsp ~/.priv/todo.asc<CR>
nnoremap   <Leader>epv :vsp ~/.priv/priority.asc<CR>
nnoremap   <Leader>eav :vsp ~/.priv/aim.asc<CR>
"sourcing
nnoremap <Leader>sd :!cd ~/.dotfiles/ && ./dotfiles-setup.sh<CR>
"nnoremap <Leader>sv :source $MYVIMRC<CR>
"nnoremap <Leader>sb :source ~/.bashrc<CR>
"VUNDLE
nnoremap <Leader>bi :BundleInstall<CR>
nnoremap <Leader>bu :BundleInstall!<CR>
nnoremap <Leader>bc :BundleClean<CR>
nnoremap <Leader>bl :BundleList<CR>
nnoremap <Leader>bs :BundleSearch<CR>

" NERDTREE
let NERDTreeShowHidden=1
"this is a BAD hack: minimize NERDTREE completely after opening it
"then resize is to be 40 chars wide, place cursor 10 chars from left
nnoremap <Leader><CR> :NERDTreeToggle<CR>999<C-w><40<C-w>>010l
" OPEN LAST CLOSED WINDOW
nnoremap <Leader>n :vs<bar>:b#<CR>
" OPEN YANKRING
nnoremap <silent> <Leader>p :YRShow<CR>
" CHOOSE COLORSCHEME
nnoremap <Leader>o :vnew<CR>:ColorSchemeExplorer<CR>
" SHOW NAME OF CURRENT COLORSCHEME
nnoremap <Leader>i :echo g:colors_name<CR>

"map <leader>et :tabe %% "i dont work with tabs
" FOLDLEVELS
nnoremap <Leader>1 :se foldlevel=1<CR>
nnoremap <Leader>2 :se foldlevel=2<CR>
nnoremap <Leader>3 :se foldlevel=3<CR>
nnoremap <Leader>4 :se foldlevel=4<CR>
nnoremap <Leader>5 :se foldlevel=5<CR>
nnoremap <Leader>6 :se foldlevel=6<CR>
nnoremap <Leader>7 :se foldlevel=7<CR>
nnoremap <Leader>8 :se foldlevel=8<CR>
nnoremap <Leader>9 :se foldlevel=9<CR>
nnoremap <Leader>0 :se foldlevel=0<CR>
" INSERT FILETYPE CONFIG MODELINE + jump back where i was
nnoremap <Leader>ft <ESC><ESC>Go<CR># vim: se ft=config:<ESC>g;g;
" HEADLINING
" TODO further improve this so the whole codeblock will be created, with help
" of NERDcommenter
nnoremap <Leader>HL <ESC><ESC>:s/\v/  /<CR>^hxhx
nnoremap <Leader>hl <ESC><ESC>:s/\v/ /<CR>^hx
" UPPERCASE CURRENT LINE
nnoremap <Leader>uu VgU

"
"   G E N E R A L  S E T T I N G S
"
" SYNTAX HL
syntax on
" LINE NUMBERS
se nonu "nu"
" RELATIVE LINE NUMBERS - since 7.3, mac is 7.2
" TODO: get this working on only on vim 7.3+, in visual mode?
" use an if clause...
se nornu "rnu"
" WORD WRAP
se wrap "nowrap"
" RULER
se noru "ru"
" CURSORLINE
se nocul
" colorcolumn at 80 chars
"se colorcolumn=81
" SHOW MATCHING PARENS
se sm "nosm"
" SHOW MODE
se smd "nosmd"
" SHOW LIST
se wildmenu
" LIST MATCHES, THEN LONGEST COMMON PART, THEN ALL.
se wildmode=list:longest,full


"
"   F  I  L  E  T  Y  P  E     S  P  E  C  I  F  I  C
"
" ENABLE MODELINES
se ml "noml"
se mls=5 "mls=0"

" LaTeX stuff can be found in $VIMFILES/ftplugin/tex.vim
"source $VIMRUNTIME/ftplugin/tex.vim
" LATEX STUFF
" needed for win32, TODO: fix this with an if
" set shellslash
set grepprg=grep\ -nH\ $*
"indent just a little, TODO: fix this with an if just for latex files
"set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
" create mapping only for certain file type
"autocmd FileType tex :nmap <F4> \ll\lv
"autocmd FileType tex :imap <F4> <ESC>\ll\lvgi
"let g:tex_flavor                  = 'latex'
let g:Tex_DefaultTargetFormat     = 'pdf'
let g:Tex_CompileRule_dvi         = 'latex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_CompileRule_ps          = 'dvips -synctex=1 -Pwww -o $*.ps $*.dvi'
let g:Tex_CompileRule_pspdf       = 'ps2pdf -synctex=1 $*.ps'
let g:Tex_CompileRule_dvipdf      = 'dvipdfm -synctex=1 $*.dvi'
let g:Tex_CompileRule_pdf         = 'pdflatex -synctex=1 --interaction=nonstopmode $*'
" viewrules
"TODO fix this for mac and win...
"let g:Tex_ViewRule_dvi            = '/Applications/Skim.app/Contents/MacOS/Skim'
"let g:Tex_ViewRule_ps             = '/Applications/Skim.app/Contents/MacOS/Skim'
"let g:Tex_ViewRule_pdf            = '/Applications/Skim.app/Contents/MacOS/Skim'
"let g:Tex_ViewRule_dvi            = 'C:/Program Files (x86)/Adobe/Acrobat 10.0/Acrobat/Acrobat.exe'
"let g:Tex_ViewRule_ps             = 'C:/Program Files (x86)/Adobe/Acrobat 10.0/Acrobat/Acrobat.exe'
"let g:Tex_ViewRule_pdf            = 'C:/Program Files (x86)/Adobe/Acrobat 10.0/Acrobat/Acrobat.exe'
let g:Tex_ViewRule_dvi            = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
let g:Tex_ViewRule_ps             = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
let g:Tex_ViewRule_pdf            = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
" formatdependencies
let g:Tex_FormatDependency_ps     = 'dvi,ps'
let g:Tex_FormatDependency_pspdf  = 'dvi,ps,pspdf'
let g:Tex_FormatDependency_dvipdf = 'dvi,dvipdf'
" ignorewarnings
"let g:Tex_IgnoredWarnings ='
"      \"Underfull\n".
"      \"Overfull\n".
"      \"specifier changed to\n".
"      \"You have requested\n".
"      \"Missing number, treated as zero.\n".
"      \"There were undefined references\n".
"      \"Citation %.%# undefined\n".
"      \"\oval, \circle, or \lin
" backspace deletes diacritics
let g:Tex_SmartKeyBS = 1
" '"' wird nicht ersetzt
let g:Tex_SmartKeyQuote = 0 
" LaTeX shortcuts
iab lra $\longrightarrow$
iab isabel \textsc{isabel}
"iab ttt \texttt{} <++><esc><left><left><left><left>i<esc><left>

" JSON HIGHLIGHTING
"au BufNewFile,BufRead *.json set ft=javascript
" MANPAGES FROM WITHIN VIM
"source $VIMRUNTIME/ftplugin/man.vim
"source $VIMRUNTIME/ftplugin/muttrc.vim
"source $VIMRUNTIME/ftplugin/ant.vim

" NEOCOMPLCACHE
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
			\ 'default' : '',
			\ 'vimshell' : $HOME.'/.vimshell_hist',
			\ 'scheme' : $HOME.'/.gosh_completions'
			\ }
" Define keyword
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g> neocomplcache#undo_completion()
inoremap <expr><C-l> neocomplcache#complete_common_string()
" SuperTab like snippets behavior.
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BACKSPACE> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y> neocomplcache#cancel_popup()
inoremap <expr><C-e> neocomplcache#cancel_popup()
" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1
" Shell like behavior(not recommended).
"se completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" Enable omni completion.
au FileType css setlocal omnifunc=csscomplete#CompleteCSS
au FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
au FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
au FileType python setlocal omnifunc=pythoncomplete#Complete
au FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
	let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"au FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|'"


"
"   A U T O L O A D I N G   S T U F F
"
"REMOVE TRAILING WHITESPACE AND ^M CHARS
au FileType c,cpp,java,php,javascript,python,twig,xml,yml au BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

"
"  U N U S E D   S T U F F
"

" ESCAPE INS MODE BESIDES CTRL-[
"imap jj <ESC>l
"imap kk <ESC>k

"au Filetype asciidoc se nolist

"SOURCE VIMRC AUTOMATICALLY
" seems to have hang ups...
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
" SAVE ALL FILES WHEN FOCUS IS LOST
"au FocusLost * :wa
" WHEN RESIZING THE WINDOW
" TODO: make this bastard work
" right now i use <Leader>= to fix sizes
" after i resized the window
"au VimResized noea ea "this does not work as it should
" // EOF
