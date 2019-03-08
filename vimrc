set nocompatible
set encoding=utf-8
set t_Co=256
filetype off

" Add vim config directory to runtimepath
set rtp^=$HOME/.vim/config

runtime! /config/*.vim

filetype plugin indent on
syntax enable

set autowrite
set autoread
set incsearch hlsearch wrapscan
set wildmenu
set wildignore+=*/.git/*,*/tmp/*,*.swp,*cls-meta.xml
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set linebreak
set breakindent
set visualbell                                          " no sounds

" Open new splits to right and bottom
set splitbelow
set splitright

" Search behavior
" Ignore case when searching
set ignorecase
" Except when the search query contains a capital letter
set smartcase

" Highlight column 120 to keep lines short(er)
set colorcolumn=120

" Invisible characters
set listchars=trail:·,space:·,nbsp:␣,precedes:«,extends:»,eol:↲,tab:▸\
set showbreak=↪\

set background=dark

let g:session_autoload = 'no'
