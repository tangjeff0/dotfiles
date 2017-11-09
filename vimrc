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
let g:ctrlp_open_new_file = 'h'
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

" Tmux-like window resizing - the greatest of all time: https://stackoverflow.com/questions/27265490/vim-window-resizing-repetitively#36653470
function! IsEdgeWindowSelected(direction)
    let l:curwindow = winnr()
    exec "wincmd ".a:direction
    let l:result = l:curwindow == winnr()

    if (!l:result)
        " Go back to the previous window
        exec l:curwindow."wincmd w"
    endif

    return l:result
endfunction

function! GetAction(direction)
    let l:keys = ['h', 'j', 'k', 'l']
    let l:actions = ['vertical resize -', 'resize +', 'resize -', 'vertical resize +']
    return get(l:actions, index(l:keys, a:direction))
endfunction

function! GetOpposite(direction)
    let l:keys = ['h', 'j', 'k', 'l']
    let l:opposites = ['l', 'k', 'j', 'h']
    return get(l:opposites, index(l:keys, a:direction))
endfunction

function! TmuxResize(direction, amount)
    " v >
    if (a:direction == 'j' || a:direction == 'l')
        if IsEdgeWindowSelected(a:direction)
            let l:opposite = GetOpposite(a:direction)
            let l:curwindow = winnr()
            exec 'wincmd '.l:opposite
            let l:action = GetAction(a:direction)
            exec l:action.a:amount
            exec l:curwindow.'wincmd w'
            return
        endif
    " < ^
    elseif (a:direction == 'h' || a:direction == 'k')
        let l:opposite = GetOpposite(a:direction)
        if IsEdgeWindowSelected(l:opposite)
            let l:curwindow = winnr()
            exec 'wincmd '.a:direction
            let l:action = GetAction(a:direction)
            exec l:action.a:amount
            exec l:curwindow.'wincmd w'
            return
        endif
    endif

    let l:action = GetAction(a:direction)
    exec l:action.a:amount
endfunction

" Map to buttons
nnoremap <S-h> :call TmuxResize('h', 5)<CR>
nnoremap <S-j> :call TmuxResize('j', 5)<CR>
nnoremap <S-k> :call TmuxResize('k', 5)<CR>
nnoremap <S-l> :call TmuxResize('l', 5)<CR>
