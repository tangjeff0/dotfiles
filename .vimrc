"# NATIVE TO VIM
set pastetoggle=<F3>
set autoindent
set nosmartindent
set number
set undofile
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start

"# PLUGINS
" PATHOGEN
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
set background=light
let g:solarized_termcolors=256
colorscheme solarized

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

" FUGITIVE
" https://github.com/tpope/vim-fugitive
