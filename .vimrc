" Pastetoggle
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim#2514520
set pastetoggle=<F3>

set autoindent
set number
set undofile

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start

set nosmartindent

" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" NerdTree"
" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>

" https://github.com/altercation/vim-colors-solarized
" https://github.com/altercation/solarized/tree/master/osx-terminal.app-colors-solarized
" https://github.com/timmfin/terminalcolours
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
