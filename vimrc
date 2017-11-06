" commands im tryna use
" :g/pattern/z#.5|echo "=========="
" <c-6> or <c-^> to open last edited file
" 2J join two lines... whats the opposite?
" motions:
  " g; g, to move between jumps
  " gm to go to middle of whole line
  " gj or gk to move one line down char-wise
" marks:
  " ma to leave a local mark. go to this mark with `m (exact) or 'm (line)
  " mA to leave a global mark. go there wherever and whenever!
  " ]' next line with lowercase mark
  " `. to move to last edit

set shellpipe=>
set invnumber
set pastetoggle=<F1>
map <F2> :set invnumber<CR>
map <F3> :NERDTreeMirror<CR>
map <F4> :IndentLinesToggle<CR>
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
