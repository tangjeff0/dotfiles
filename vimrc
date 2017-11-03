" commands im tryna use
" :g/pattern/z#.5|echo "=========="
" <c-6>
" 2J join two lines... holy tits
" { motion

set shellpipe=>
set invnumber
set pastetoggle=<F1>
map <F2> :set invnumber<CR>
map <F3> :NERDTreeMirror<CR>
set autoindent
set undofile
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 expandtab
set backspace=indent,eol,start
set showmatch
set mps+=<:>

" PATHOGEN
execute pathogen#infect()

" NERDTree
let g:NERDTreeWinPos = "left"
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"
map <C-n> :NERDTreeToggle<CR>

" SOLARIZED
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let g:solarized_termtrans=1

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_custom_ignore = {
\ 'dir': 'node_modules',
\ }

" ALE
let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ }

" LIGHTLINE
set laststatus=2

" SILVER SEARCHER | ACK | AG
let g:ackprg = 'ag --nogroup --nocolor --column'

" FUGITIVE
" https://github.com/tpope/vim-fugitive
" to be integrated into my workflow

" COMMENTARY
" git://github.com/tpope/vim-commentary.git
"set commentstring=//\ %s
