"
"
"     S  J  A  S     M  A  S  T  E  R     .  V  I  M  R  C
"
"
"
"   B A S E   S E T T I N G S   +   V U N D L E   I N T E G R A T I O N
"
" VUNDLE TO RULE IT ALL: absolutely needs the following
" be iMproved: USE vim NOT vi
se nocompatible
filetype off "VUNDLE NEEDS THIS HERE
se rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" DEFAULT IS '\' FOR LEADER KEY - '<space>' IS MORE ACCESSIBLE
" inserted via <C-v><space>, proper keycode needed!
" define this before any of the plugins is loaded...
let mapleader = ' '
let maplocalleader = ' '
filetype plugin indent on "back to normal 
Bundle 'gmarik/vundle'
" fix iterm2 stuff on mac: FocusLost and cursor
Bundle 'sjl/vitality.vim'
" required for FuzzyFinder
Bundle 'L9'
" general
Bundle 'sjl/splice.vim'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'arpeggio'
Bundle 'FuzzyFinder'
Bundle 'taglist.vim'
Bundle 'YankRing.vim'
Bundle 'Shougo/neosnippet'
"Bundle 'Shougo/neocomplete'
Bundle 'Shougo/vimshell'
" deprecated:
"Bundle 'Shougo/neocomplcache'
"Bundle 'Shougo/neocomplcache-snippets-complete'
" editing
Bundle 'scrooloose/nerdcommenter'
Bundle 'Raimondi/delimitMate'
Bundle 'Align'
Bundle 'surround.vim'
Bundle 'matchit.zip'
Bundle 'mattn/emmet-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Bundle 'SearchComplete'
Bundle 'repeat.vim'
" markup languages and syntax highlighting
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
Bundle 'sjas/asciidoc-vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'timcharper/textile.vim'
Bundle 'sjas/octave.vim'
" organize text files
"Bundle 'sjas/todo.txt-vim'
Bundle 'jceb/vim-orgmode'
Bundle 'sjas/workflowish'
" GUI stuff
Bundle 'ShowMarks'
Bundle 'colorizer'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'sjas/haskellmode-vim'
Bundle 'ehamberg/vim-cute-python'
Bundle 'Twinside/vim-haskellConceal'
Bundle 'Twinside/vim-hoogle'
" TODO
"Bundle 'tomtom/checksyntax_vim'
"Bundle 'tomtom/quickfixsigns_vim'
" colorscheme stuff
Bundle 'sjas/csExplorer'
Bundle 'sjl/badwolf'
Bundle 'altercation/vim-colors-solarized'
Bundle 'spf13/vim-colors'
Bundle 'nelstrom/vim-mac-classic-theme'
Bundle 'sjas/ColorSamplerPack'
colo badwolf
se magic "how to handle rexexp escaping
" powerline
se ls=2 "always show statusline
se encoding=utf8
se t_Co=256
"let g:Powerline_symbols = 'compatible' "'fancy' and 'unicode' settings fuck up
let g:Powerline_symbols = 'fancy' "'fancy' and 'unicode' settings fuck up


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
" in visual mode, this will expand to:
" :'<,'>s/
vnoremap s/ :s/
" RESET SEARCH HIGHLIGHTING
"nnoremap <Leader><backspace> :noh<CR><CR>:<BACKSPACE>k
nnoremap <Leader><backspace> /qwerqwerasdfasdf<CR><ESC>
"intendation highlighting
nnoremap <Leader>ih :match Search /\%(\_^\s*\)\@<=\%(\%1v\|\%5v\|\%9v\)\s/<cr>
" HIGHLIGHT RESULTS / hlsearch
se hls
" IGNORE CASE
se ic "noic"
" SMARTCASE: SENSITIVE WHEN UC CHAR PRESENT
se scs "noscs"
" SHOW PROPER WHITESPACE
" random eol chars to choose from: Ξ♦‡╬∆Ω∙⌂₣‰↨¬⌐
se listchars=eol:♦,tab:↨¬,trail:⌐,extends:‡,precedes:╬,nbsp:Ξ
se list "list nolist
" INCREMENTAL SEARCH
se is "nois"
" WHAT'S SHOWN WHEN SCROLLING
se scrolljump=0 "negative values are in percent
se scrolloff=0 "cursor stays in mid of screen...
" ctags tag list
set tags=./tags;/
nnoremap <Leader>ct :!ctags -R .<cr>
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
se ts=4
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
nnoremap <Leader>fq :q<CR>
nnoremap <Leader>rq :q!<CR>
nnoremap <Leader>fd :e!<CR>
" CUT,COPY,PASTE FROM CLIPBOARD EASILY
set clipboard=unnamed
"vnoremap <Leader>x "+d
"vnoremap <Leader>c "+y
"nnoremap <Leader>v "+p
" PROFESSIONALLY OPEN FILES
nnoremap <Leader>fe :e <C-R>=expand('%:h').'/'<cr>
"nnoremap <Leader>fe :e <C-R>=expand('%:p').'/'<cr>
" FAST RUN BINDING
"nnoremap <Leader>fr :w<CR>:silent ! %<CR>
"nnoremap <Leader>fr :w<CR>:silent !ghcii.sh %<CR>
"nnoremap <Leader>fr :w<CR>:!python % -f ./raw-material/Dfn.graphml<CR>
"nnoremap <Leader>fr :wa<CR>:!ghc --make Main.hs && ./Main<CR>
nnoremap <leader>fr :wa<cr>:!/cygdrive/c/Users/sjas/work/sap-projekt/compile-latex.sh<cr>
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

" ShowMarks
let showmarks_enable = 0
nnoremap <Leader>sm :ShowMarksToggle<CR>
" Gundo
nnoremap <F5> :GundoToggle<CR>
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 0
let g:gundo_preview_bottom = 0
let g:gundo_help = 1
let g:gundo_map_move_older = 'j'
let g:gundo_map_move_newer = 'k'
let g:gundo_close_on_revert = 0
let g:undo_auto_preview = 1

" ARPEGGIO SETTINGS TO MY FINGERS AND WRISTS
call arpeggio#load()
" escape
"Arpeggio nnoremap jk <Esc>
Arpeggio inoremap jk <Esc>
Arpeggio vnoremap jk <Esc>
" fugitive
Arpeggio nnoremap gc :Git commit -a<cr>
Arpeggio nnoremap ga :Git add .<cr>
Arpeggio nnoremap gh :Git pull<cr>
Arpeggio nnoremap gu :Git push<cr>
Arpeggio nnoremap gs :Git status<cr>
Arpeggio nnoremap gl :Git log<cr>
Arpeggio nnoremap gd :Gsdiff HEAD<cr>
" WRITE READ-ONLY FILE AS ADMIN
cmap w!! w !sudo tee % >/dev/null

"fast align hack in visual mode
" in visual mode, this will expand to:
" :'<,'>Align 
vnoremap <Leader>al :Align 
"vnoremap align :Align

" WINDOW MANAGEMENT SETTINGS
"moving from window to window
nnoremap <C-h>  <C-w>h
"sadly, next two bindings dont really work.
"nnoremap <C-j>  <C-w>j
"nnoremap <C-k>  <C-w>k
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
nnoremap  <Leader>egv :e    ~/.dotfiles/vim/_gvimrc<CR>
nnoremap   <Leader>eg :e    ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>eb :e    ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebp :e    ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efea :e    ~/.dotfiles/aliases/fasteditaliases<CR>
nnoremap  <Leader>ega :e    ~/.dotfiles/aliases/gitaliases<CR>
nnoremap  <Leader>esa :e    ~/.dotfiles/aliases/aliases<CR>
nnoremap   <Leader>et :e    ~/.priv/todo.wofl<CR>
nnoremap   <Leader>ep :e    ~/.priv/priority.wofl<CR>
nnoremap   <Leader>ea :e    ~/.priv/aim.wofl<CR>
nnoremap   <Leader>ez :e    ~/.dotfiles/zsh/.zshrc<CR>
"in horizontal splitview
nnoremap   <Leader>evt :sp  ~/.dotfiles/vim/.vimrc<CR>
nnoremap  <Leader>egvt :sp  ~/.dotfiles/vim/_gvimrc<CR>
nnoremap   <Leader>egt :sp  ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>ebt :sp  ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebpt :sp  ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efeat :sp  ~/.dotfiles/aliases/fasteditaliases<CR>
nnoremap  <Leader>egat :sp  ~/.dotfiles/aliases/gitaliases<CR>
nnoremap  <Leader>esat :sp  ~/.dotfiles/aliases/aliases<CR>
nnoremap   <Leader>ett :sp  ~/.priv/todo.wofl<CR>
nnoremap   <Leader>ept :sp  ~/.priv/priority.wofl<CR>
nnoremap   <Leader>eat :sp  ~/.priv/aim.wofl<CR>
nnoremap   <Leader>ezt :sp  ~/.dotfiles/zsh/.zshrc<CR>
"in vertical splitview
nnoremap   <Leader>evv :vsp ~/.dotfiles/vim/.vimrc<CR>
nnoremap  <Leader>egvv :vsp ~/.dotfiles/vim/_gvimrc<CR>
nnoremap   <Leader>egv :vsp ~/.dotfiles/git/.gitconfig<CR>
nnoremap   <Leader>ebv :vsp ~/.dotfiles/bash/.bashrc<CR>
nnoremap  <Leader>ebpv :vsp ~/.dotfiles/bash/.bash_profile<CR>
nnoremap <Leader>efeav :vsp ~/.dotfiles/aliases/fasteditaliases<CR>
nnoremap  <Leader>egav :vsp ~/.dotfiles/aliases/gitaliases<CR>
nnoremap  <Leader>esav :vsp ~/.dotfiles/aliases/aliases<CR>
nnoremap   <Leader>etv :vsp ~/.priv/todo.wofl<CR>
nnoremap   <Leader>epv :vsp ~/.priv/priority.wofl<CR>
nnoremap   <Leader>eav :vsp ~/.priv/aim.wofl<CR>
nnoremap   <Leader>ezv :vsp ~/.dotfiles/zsh/.zshrc<CR>
"sourcing
nnoremap <Leader>sd :!cd ~/.dotfiles/ && ./dotfiles-setup-linux.sh<CR>
"nnoremap <Leader>sf :silent !c:\Users\sjas\.dotfiles\dotfiles-setup-win.bat<CR>
nnoremap <Leader>sf :!/cygdrive/c/Users/sjas/.dotfiles/dotfiles-setup-win.bat<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>sb :source ~/.bash_profile<CR>
"VUNDLE
nnoremap <Leader>bi :BundleInstall<CR>
nnoremap <Leader>bu :BundleInstall!<CR>
nnoremap <Leader>bc :BundleClean<CR>
nnoremap <Leader>bl :BundleList<CR>
nnoremap <Leader>bs :BundleSearch<CR>

" Taglist
" TODO
nnoremap <Leader>ta  :TlistAddFiles 
nnoremap <Leader>tar :TlistAddFilesRecursive 
nnoremap <Leader>tl  :TlistToggle<cr>
nnoremap <Leader>tu  :TlistUpdate<cr>

" NERDTREE
let NERDTreeShowHidden=1
"this is a BAD hack: minimize NERDTREE completely after opening it
"then resize is to be 40 chars wide, place cursor 10 chars from left
"this also works just for opening.
"TODO fix this also, some day... soon haha... ...
nnoremap <Leader><CR> :NERDTreeToggle<CR>999<C-w><40<C-w>>010l
"nnoremap <Leader><CR> :NERDTreeFind<CR>999<C-w><40<C-w>>010l
" this is not working, fix it some day...
"autocmd BufEnter * silent! if bufname('%') !~# 'NERD_tree_' | cd %:p:h | NERDTreeCWD | wincmd p | endif
" OPEN LAST CLOSED WINDOW
"todo remap this to next tab
"nnoremap <Leader>n :vs<bar>:b#<CR>
" OPEN YANKRING
nnoremap <silent> <Leader>p :YRShow<CR>
" CHOOSE COLORSCHEME
nnoremap <Leader>o :vnew<CR>:ColorSchemeExplorer<CR>
" SHOW NAME OF CURRENT COLORSCHEME
nnoremap <Leader>i :echo g:colors_name<CR>

"map <leader>et :tabe %% "i dont work with tabs
" FOLDING
"easier moving, because z sucks and w is overrated
"nnoremap z w
"nnoremap w z
" FOLDLEVELS
nnoremap <Leader>1 :se foldlevel=0<CR>
nnoremap <Leader>2 :se foldlevel=1<CR>
nnoremap <Leader>3 :se foldlevel=2<CR>
nnoremap <Leader>4 :se foldlevel=3<CR>
nnoremap <Leader>5 :se foldlevel=4<CR>
nnoremap <Leader>6 :se foldlevel=5<CR>
nnoremap <Leader>7 :se foldlevel=6<CR>
nnoremap <Leader>8 :se foldlevel=7<CR>
nnoremap <Leader>9 :se foldlevel=8<CR>
nnoremap <Leader>0 :se foldlevel=9<CR>
" INSERT FILETYPE CONFIG MODELINE + jump back where i was
nnoremap <Leader>ft <ESC><ESC>Go<CR># vim: se ft=config:<ESC>g;g;
" HEADLINING
"TODO how to create whole commentblocks?
nnoremap <Leader>HL <ESC><ESC>:s/\v/  /<CR>^hxhx
nnoremap <Leader>hl <ESC><ESC>:s/\v/ /<CR>^hx
" UPPERCASE CURRENT LINE
nnoremap <Leader>uu VgU
" ADD CURRENT DATE AT THE END OF FILE
" comment it out and jump back to last edit location
nnoremap <Leader>fs :.!date<cr><esc>
" remove unneeded carriage returns
nnoremap <Leader><Leader>e :s/ $<cr>/qwerqwer<cr><esc>
vnoremap <Leader><Leader>e :s/ $<cr>/qwerqwer<cr><esc>
" remove prepending whitespaces
nnoremap <Leader><Leader>w :s/^\s*<cr>/qwerqwer<cr><esc>
vnoremap <Leader><Leader>w :s/^\s*<cr>/qwerqwer<cr><esc>

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
" deactivated since i only work with 7.2 on all platforms curently
"se nornu "rnu"
" WORD WRAP
se wrap "nowrap"
" RULER
se noru "ru"
" CURSORLINE
se cul "nocul
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
" properly encrypt files
se cm=blowfish

"
"   F  I  L  E  T  Y  P  E     S  P  E  C  I  F  I  C
"
" ENABLE MODELINES AND HOW MANY LINES ARE CHECKED
se ml "noml"
se mls=2 "mls=0"

" LaTeX stuff can be found in $VIMFILES/ftplugin/tex.vim
source $VIMRUNTIME/ftplugin/tex.vim
" LATEX STUFF
" needed for win32
"if has('win32') || has('win64')
    "set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    "set shellslash
"endif
set grepprg=grep\ -nH\ $*
"indent just a little and wrap text automatically
au Filetype tex setlocal sw=2 tw=80 cc=81
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
" create mapping only for certain file type
"autocmd FileType tex :nmap <F4> \ll\lv
"autocmd FileType tex :imap <F4> <ESC>\ll\lvgi
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor                  = 'latex'
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
"let g:Tex_ViewRule_dvi            = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
"let g:Tex_ViewRule_ps             = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
"let g:Tex_ViewRule_pdf            = 'C:/Program Files/Tracker Software/PDF Viewer/PDFXCview.exe'
"let g:Tex_ViewRule_dvi            = '/cygdrive/c/Program\ Files\ \(x86\)/SumatraPDF/sumatrapdf.exe'
"let g:Tex_ViewRule_ps             = '/cygdrive/c/Program\ Files\ \(x86\)/SumatraPDF/sumatrapdf.exe'
"let g:Tex_ViewRule_pdf            = '/cygdrive/c/Program\ Files\ \(x86\)/SumatraPDF/sumatrapdf.exe'
let g:Tex_ViewRule_dvi            = 'sumatrapdf'
let g:Tex_ViewRule_ps             = 'sumatrapdf'
let g:Tex_ViewRule_pdf            = 'sumatrapdf'

" shell settings...
set shell=zsh
set shellcmdflag=-c
set shellslash

let g:Tex_Leader='`'

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
iab hh \<++>{<++>} \label{_<++>} <++>
"iab ttt \texttt{} <esc><left><left><left><left>i<esc><left>

" JSON HIGHLIGHTING
"au BufNewFile,BufRead *.json set ft=javascript
" MANPAGES FROM WITHIN VIM
source $VIMRUNTIME/ftplugin/man.vim
"next line needs ; since i switched ; with : and vice versa
nnoremap ;man :Man
source $VIMRUNTIME/ftplugin/ant.vim
"source $VIMRUNTIME/ftplugin/muttrc.vim

"" NEOCOMPLETE
"" Note: This option must set it in .vimrc(_vimrc).
"" NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
    "\ 'default' : '',
    "\ 'vimshell' : $HOME.'/.vimshell_hist',
    "\ 'scheme' : $HOME.'/.gosh_completions'
    "\ }

"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
    "let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return neocomplete#smart_close_popup() . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.c =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
let g:neocomplete#sources#omni#input_patterns.cpp =
\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl =
\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

" For smart TAB completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
"        \ <SID>check_back_space() ? "\<TAB>" :
"        \ neocomplete#start_manual_complete()
"  function! s:check_back_space() "{{{
"    let col = col('.') - 1
"    return !col || getline('.')[col - 1]  =~ '\s'
"  endfunction"}}}

" NEOSNIPPET
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    "\ "\<Plug>(neosnippet_expand_or_jump)"
    "\: pumvisible() ? "\<C-n>" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    "\ "\<Plug>(neosnippet_expand_or_jump)"
    "\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'

"
"   G V I M R C   S E T T I N G S
"

" Make external commands work through a pipe instead of a pseudo-tty
set noguipty
set mousehide       " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>


" THIS IS SOME PERSONALIZED STIFF WHERE I DONT REALLY KNOW WHY I INCLUDED IT
" IT WILL ALL BECOME CLEAR AFTER A WHILE?
behave xterm
" anstelle von:
" behave mswin
"imap jj <ESC>
" use tempdirs for backupfiles
"set backupdir=$TEMP
"set directory=$TEMP
" I DONT KNOW IF THIS COLORSCHEME JUST WORKS ON GVIM, SO IT STAYS HERE...
"colo soruby
" fullscreen starten
au GUIEnter * simalt ~x
au GUIEnter * simalt <f10>
" buttonleiste ausblenden
if has('gui_running')
  set guioptions-=T   " Remove toolbar, 'm' statt 'T' fürs menu...
endif

" schriftart herausfinden mit ":set guifont?"
" menu aufrufen mit ":set guifont=*"
" lucida sans typewriter = KURSIV im original!!!
"set guifont=lucida_sans_typewriter_regular:h9:cANSI
set guifont=Lucida_Console:h9:cANSI
""""set guifont=Envy_Code_R:h10.0:b:cANSI
" font size toggle
" CTRL+SHIFT+F11/F12 to toggle font size
function! ScaleFontUp()
  let gf_size_whole = matchstr(&guifont, '\(\:h\)\@<=\d\+')
  let gf_size_frac = matchstr(&guifont, '\(\:h\d\+\.\)\@<=\d\=')
  let font_size = gf_size_whole * 10 + gf_size_frac
  let font_size = font_size + 5
  let gf_size_whole = font_size / 10
  let gf_size_frac = font_size - gf_size_whole * 10
  let new_font_size = ':h'.gf_size_whole.'.'.gf_size_frac.':'
  let &guifont = substitute(&guifont, '\:h.\{-}\:', new_font_size, '')
endfunction

function! ScaleFontDown()
  let gf_size_whole = matchstr(&guifont, '\(\:h\)\@<=\d\+')
  let gf_size_frac = matchstr(&guifont, '\(\:h\d\+\.\)\@<=\d\=')
  let font_size = gf_size_whole * 10 + gf_size_frac
  let font_size = font_size - 5
  let gf_size_whole = font_size / 10
  let gf_size_frac = font_size - gf_size_whole * 10
  let new_font_size = ':h'.gf_size_whole.'.'.gf_size_frac.':'
  let &guifont = substitute(&guifont, '\:h.\{-}\:', new_font_size, '')
endfunction

nmap <C-F11> :call ScaleFontDown()<CR>
nmap <C-F12> :call ScaleFontUp()<CR>

" schriften toggle
"nmap <C-S-F1> :set guifont=Droid_Sans_Mono:h8.0:cANSI<CR>
"nmap <C-S-F2> :set guifont=Droid_Sans_Mono:h8.0:b:cANSI<CR>

"nmap <C-S-F3> :set guifont=Envy_Code_R:h8.0:cANSI<CR>
"nmap <C-S-F4> :set guifont=Envy_Code_R:h8.0:b:cANSI<CR>

"nmap <C-S-F5> :set guifont=Inconsolata:h8.0:cANSI<CR>
"nmap <C-S-F6> :set guifont=Inconsolata:h8.0:b:cANSI<CR>

"nmap <C-S-F7> :set guifont=Lucida_Sans_Typewriter:h8.5:b:cANSI<CR>
"nmap <C-S-F8> :set guifont=Lucida_Sans_Typewriter:h9.0:b:cANSI<CR>

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
"set shellslash
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" haskellmode
let g:ghc="/cygdrive/c/lang/HaskellPlattform/bin/ghc"
let g:haddock_browser="/cygdrive/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"
let g:haddock_docdir="/cygdrive/c/lang/HaskellPlattform/doc/html/"

" zencoding hotkey
let g:user_zen_leader_key = '<C-b>'

let g:use_zen_complete_tag = 1

  let g:user_zen_settings = {
  \  'lang' : 'ja',
  \  'html' : {
  \    'filters' : 'html',
  \    'indentation' : ' '
  \  },
  \  'perl' : {
  \    'indentation' : '  ',
  \    'aliases' : {
  \      'req' : "require '|'"
  \    },
  \    'snippets' : {
  \      'use' : "use strict\nuse warnings\n\n",
  \      'w' : "warn \"${cursor}\";",
  \    },
  \  },
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'html,c',
  \  },
  \  'css' : {
  \    'filters' : 'fc',
  \  },
  \  'javascript' : {
  \    'snippets' : {
  \      'jq' : "$(function() {\n\t${cursor}${child}\n});",
  \      'jq:each' : "$.each(arr, function(index, item)\n\t${child}\n});",
  \      'fn' : "(function() {\n\t${cursor}\n})();",
  \      'tm' : "setTimeout(function() {\n\t${cursor}\n}, 100);",
  \    },
  \  },
  \ 'java' : {
  \  'indentation' : '    ',
  \  'snippets' : {
  \   'main': "public static void main(String[] args) {\n\t|\n}",
  \   'println': "System.out.println(\"|\");",
  \   'class': "public class | {\n}\n",
  \  },
  \ },
  \}

" rainbow_parentheses.vim
" key for activating plugin
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
nnoremap <Leader>er :RainbowParenthesesLoadRound<cr>:RainbowParenthesesLoadSquare<cr>:RainbowParenthesesLoadBraces<cr>:RainbowParenthesesLoadChevrons<cr>:RainbowParenthesesToggle<cr>
" uncomment this for auto-on
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"au Syntax * RainbowParenthesesLoadChevrons

"
"   A U T O L O A D I N G   S T U F F
"
"REMOVE TRAILING WHITESPACE AND ^M CHARS
au FileType c,cpp,java,php,javascript,python,tex,twig,wofl,xml,yml au BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
au Filetype wofl setlocal nolist sw=2 tw=80 cc=81
au FileType m setlocal nolist
au BufNewFile,BufRead *.m     setlocal ft=octave syntax=octave nolist
au BufEnter *.hs compiler ghc

au Filetype asciidoc setlocal nolist
" SAVE ALL FILES WHEN FOCUS IS LOST
" works only in gvim IIRC
au FocusLost * :wa
