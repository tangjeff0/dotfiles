set runtimepath+=~/.vim_runtime
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim#2514520
set pastetoggle=<F3>

" https://github.com/scrooloose/nerdtree
let g:NERDTreeWinPos = "left"
map <C-n> :NERDTreeToggle<CR>

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
