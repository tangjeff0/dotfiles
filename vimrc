" commands im tryna use
" :g/pattern/z#.5|echo "=========="
" <c-6> or <c-^> to open last edited file
" 2J join two lines... whats the opposite?
" motions:
  " g; g, to move between jumps
" marks:
  " ma to leave a local mark. go to this mark with `m (exact) or 'm (line)
  " mA to leave a global mark. go there wherever and whenever!
  " ]' next line with lowercase mark
  " `. to move to last edit
" more `key-codes`

set shellpipe=>
set number
set pastetoggle=<F1>
map <F2> :set invnumber<CR>
map <F3> :IndentLinesToggle<CR>
map <F4> :NERDTreeMirror<CR>
map ® :source ~/.vimrc<CR>

map <Tab> >>
nnoremap <S-Tab> <<
" insert mode <C-d> only works if I source vim once it has already been opened 
" upon source, my syntax also turns brighter. this suggests that some commands are not run :/
imap <S-Tab> <C-d>

imap cl console.log();<Esc>==f(a
vmap cl yocll<Esc>p
nmap cl yiwocll<Esc>p 

set undofile
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 expandtab
set backspace=indent,eol,start
set showmatch
set mps+=<:>
set mps+=`:`

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
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_custom_ignore = {
\ 'dir': 'node_modules',
\ }

" ALE
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }

" LIGHTLINE
set laststatus=2

" SILVER SEARCHER | ACK | AG
let g:ackprg = 'ag --nogroup --nocolor --column'

" FUGITIVE
" https://github.com/tpope/vim-fugitive
" to be integrated into my workflow

nnoremap ∆ :m .1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Tmux-like window resizing - the greatest of all time: https://stackoverflow.com/questions/27265490/vim-window-resizing-repetitively#36653470
" Map to buttons
source ~/.vim/bundle/tmux-resize/tmux-resize.vim
nnoremap <Left> :call TmuxResize('h', 5)<CR>
nnoremap <Up> :call TmuxResize('k', 5)<CR>
nnoremap <Down> :call TmuxResize('j', 5)<CR>
nnoremap <Right> :call TmuxResize('l', 5)<CR>

