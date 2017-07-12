" Pastetoggle
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim#2514520
set pastetoggle=<F3>

" NerdTree"
" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>


execute pathogen#infect()
syntax on
filetype plugin indent on
