"# NATIVE VIM

" set shellcmdflag " what does this do?

map <F1> :set invnumber<CR>
set pastetoggle=<F3>
set autoindent
" set smartindent
set undofile
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
" set statusline=%f


" Automatically open last session of Vim

"# PLUGINS
" MatchParen
set showmatch
" DoMatchParen " WHY DONT THIS WORK :( 
hi MatchParen ctermbg=green

" PATHOGEN(   )
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" NERDTREE"
" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>

" SOLARIZED
" https://github.com/altercation/vim-colors-solarized
" https://github.com/altercation/solarized/tree/master/osx-terminal.app-colors-solarized
" https://github.com/timmfin/terminalcolours
syntax enable
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
call togglebg#map("<F2>")

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" SYNTASTIC
" https://github.com/vim-syntastic/syntastic#introduction
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint'] " why no js checkers yet?

" FUGITIVE
" https://github.com/tpope/vim-fugitive
" to be integrated into my workflow

" COMMENTARY
" git://github.com/tpope/vim-commentary.git
set commentstring=//\ %s


" VIM INSTANT MARKDOWN
" https://github.com/suan/vim-instant-markdown
" filetype plugin on
" set shell=bash\ -i
" let g:instant_markdown_autostart = 0

" LIGHTLINE
" https://github.com/itchyny/lightline.vim
set laststatus=2
