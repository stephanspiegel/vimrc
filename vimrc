set nocompatible
filetype off
set encoding=utf-8
set t_Co=256
filetype plugin indent on
syntax on
source $HOME/.vim/config/plugins.vimrc
source $HOME/.vim/config/force.com.vimrc
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
set autowrite
set number relativenumber
set incsearch hlsearch wrapscan
inoremap jk <ESC>
map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark")<CR>
nmap <F8> :TagbarToggle<CR>
set background=dark
let g:two_firewatch_italics=1
colorscheme two-firewatch
let g:airline_theme='twofirewatch'
set wildmenu
let mapleader = " "
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set splitright
set hidden
" Convert slashes to backslashes for Windows.
if has('win32')
    nmap ,cs :let @*=substitute(expand("%"), "/", "\\", "g")<CR>
    nmap ,cl :let @*=substitute(expand("%:p"), "/", "\\", "g")<CR>
      " This will copy the path in 8.3 short format, for DOS and Windows 9x
    nmap ,c8 :let @*=substitute(expand("%:p:8"), "/", "\\", "g")<CR>
else
    nmap ,cs :let @*=expand("%")<CR>
    nmap ,cl :let @*=expand("%:p")<CR>
endif
