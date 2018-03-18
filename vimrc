" filetype plugin on
" set omnifunc=syntaxcomplete#Complete

" XXX: better alt-up and tab completion
" XXX learning
" g; g, to move between jumps
" :w !pbcopy
  " copy selected part when in V-Mode
" :%w !pbcopy
  " copy the whole file
" :r !pbpaste
  " paste from the clipboard

set nocp
set shellpipe=>
set number
set pastetoggle=<F1>
noremap <F2> :set invnumber<CR>
noremap <F3> :IndentGuidesToggle<CR>
noremap <F4> :NERDTreeMirror<CR>
noremap <F5> :CtrlPClearCache<CR>
noremap <F6> :UndotreeToggle<CR>
noremap ® :source ~/.vim/vimrc<CR>
noremap ç :set cursorcolumn! cursorline!<CR>

imap cll console.log();<Esc>$F(a
vmap cll yocll<Esc>p
nmap cll yiwocll<Esc>p 
nmap <S-y> y$

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
autocmd BufRead,BufNewFIle *.md setlocal spell
set viewoptions-=options

set undofile
set undodir=~/.vim/undodir
set shiftwidth=2 tabstop=2 softtabstop=0 expandtab
autocmd BufRead,BufNewFile   *.rs set tabstop=4 softtabstop=4 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set autoindent
set showmatch
set mps+=<:>
set mps+=`:`

" PATHOGEN
execute pathogen#infect()



" VimCompletesMe enter
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" vim-mucomplete
set completeopt+=menuone

" Vim Indent Guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=black ctermbg=7
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=green ctermbg=8

" NERDTree
let g:NERDTreeWinPos = "left"
let g:NERDTreeMapOpenSplit = "s"
let g:NERDTreeMapOpenVSplit = "v"
map <C-n> :NERDTreeToggle<CR>

" syntax highlighting
syntax on
" colorscheme brogrammer
colorscheme seoul256
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
set background=dark

" lightline
set laststatus=2
set noshowmode

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_open_new_file = 'h'
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
\ 'dir': '\v[\/](node_modules|android|ios)',
\ }


" ALE
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ }
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" SILVER SEARCHER | ACK | AG
let g:ackprg = 'ag --nogroup --nocolor --column'

" Tmux-like window resizing - the greatest of all time: https://stackoverflow.com/questions/27265490/vim-window-resizing-repetitively#36653470
" Map to buttons
source ~/.vim/tmux-resize.vim
nnoremap <Left> :call TmuxResize('h', 5)<CR>
nnoremap <Up> :call TmuxResize('k', 5)<CR>
nnoremap <Down> :call TmuxResize('j', 5)<CR>
nnoremap <Right> :call TmuxResize('l', 5)<CR>
