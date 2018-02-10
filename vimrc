set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'luochen1990/rainbow'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
call vundle#end()
filetype plugin indent on

set t_Co=256
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
colorscheme desert
set wildmenu
let mapleader = "<Space>"
set tabstop=4
set shiftwidth=4
set expandtab
set splitbelow
set splitright
