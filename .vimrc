"# NATIVE VIM

" I would love if I could see the status of pastetoggle in the status line

map <F1> :set invnumber<CR>
set pastetoggle=<F3>
set autoindent
<<<<<<< HEAD
" set smartindent
=======
set smartindent
set number
>>>>>>> 9f649beab386d068fbbc4719f7597265cca0567f
set undofile
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set backspace=indent,eol,start
set statusline=%f
<<<<<<< HEAD


" Automatically open last session of Vim
=======
>>>>>>> 9f649beab386d068fbbc4719f7597265cca0567f

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
<<<<<<< HEAD
set background=dark
=======
set background=light
>>>>>>> 9f649beab386d068fbbc4719f7597265cca0567f
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
call togglebg#map("<F2>")

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" SYNTASTIC
" https://github.com/vim-syntastic/syntastic#introduction
 "set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" FUGITIVE
" https://github.com/tpope/vim-fugitive

" COMMENTARY
" git://github.com/tpope/vim-commentary.git
set commentstring=#\ %s
