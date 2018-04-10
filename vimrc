set nocompatible
set encoding=utf-8
set t_Co=256
filetype off
source $HOME/.vim/config/plugins.vimrc
filetype plugin indent on
syntax on

" Ultisnips Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/config/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

source $HOME/.vim/config/vim-force.com.vimrc
source $HOME/.vim/config/mappings.vimrc
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
set autowrite
set autoread
call neomake#configure#automake('w')
set number relativenumber
set incsearch hlsearch wrapscan
set wildmenu
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set linebreak
set breakindent

" Open new splits to right and bottom
set splitbelow
set splitright

" Search behavior
" Ignore case when searching
set ignorecase
" Except when the search query contains a capital letter
set smartcase

" Color at column 120
set colorcolumn=120

" Invisible characters
set listchars=trail:·,space:·,nbsp:␣,precedes:«,extends:»,eol:↲,tab:▸\ 
set showbreak=↪\

" Easy buffer switching
:nnoremap <F5> :buffers<CR>:buffer<Space>

command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

set background=dark
let g:two_firewatch_italics=1
colorscheme two-firewatch
let g:airline_theme='twofirewatch'

" Add vim config directory to runtimepath
set rtp^=$HOME/.vim/config
