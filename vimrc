set nocompatible
filetype off

set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-two-firewatch'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-fugitive'
Plugin 'luochen1990/rainbow'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Shougo/denite.nvim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'ElmCast/elm-vim'
call vundle#end()
filetype plugin indent on
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
syntax on
if has("unix")
	let &runtimepath=&runtimepath . ',~/.vim/bundle/vim-force.com'
elseif has("win32")
	let &runtimepath=&runtimepath . ',c:\Documents and Settings\username\vimfiles\vim-force.com'
endif
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
runtime ftdetect/vim-force.com.vim
let g:apex_backup_folder="/tmp/apex/backup"
let g:apex_temp_folder="/tmp/apex/temp"
let g:apex_properties_folder="/home/stephan/apex-properties"
let g:apex_tooling_force_dot_com_path="/home/stephan/tooling-force.com/tooling-force.com-0.4.0.2.jar"
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowTogglePlugin 'elzr/vim-json'
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
if has('gui_running')
    set lines=999 columns=999
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
endif
