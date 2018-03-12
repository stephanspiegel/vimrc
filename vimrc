set nocompatible
filetype off
set encoding=utf-8
set t_Co=256
filetype plugin indent on
filetype plugin indent on
syntax on
source $HOME/.vim/config/plugins.vimrc
source $HOME/.vim/config/vim-force.com.vimrc
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowTogglePlugin 'elzr/vim-json'
set autowrite
set autoread
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
set hidden

" Easy split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Open new splits to right and bottom 
set splitbelow
set splitright

" Hide search highlights with <leader><cr>
map <silent> <leader><cr> :nohlsearch<cr>

" Search behavior
" Ignore case when searching
set ignorecase
" Except when the search query contains a capital letter    
set smartcase

" Color at column 80
set colorcolumn=80

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
set autowrite
set autoread
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
set hidden

" Easy split navigation
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Open new splits to right and bottom 
set splitbelow
set splitright

" Hide search highlights with <leader><cr>
map <silent> <leader><cr> :nohlsearch<cr>

" Search behavior
" Ignore case when searching
set ignorecase
" Except when the search query contains a capital letter    
set smartcase

" Color at column 80
set colorcolumn=80

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis
