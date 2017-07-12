" Pastetoggle
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim#2514520
set pastetoggle=<F3>

" NerdTree"
" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>

" https://github.com/tpope/vim-pathogen
execute pathogen#infect('bundle/{}', '~/.vim/bundle/{}')

" https://github.com/altercation/vim-colors-solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'ctrlp'
