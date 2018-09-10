set nocompatible
set encoding=utf-8
set t_Co=256
filetype off
source $HOME/.vim/config/plugins.vimrc
filetype plugin indent on
syntax on

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
set wildignore+=*/.git/*,*/tmp/*,*.swp,*cls-meta.xml
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

" Show unsaved changes
" https://stackoverflow.com/questions/749297/can-i-see-changes-before-i-save-my-file-in-vim
function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
command! DiffSaved call s:DiffWithSaved()

function! ShowSpaces(...)
  let @/='\v(\s+$)|( +\ze\t)'
  let oldhlsearch=&hlsearch
  if !a:0
    let &hlsearch=!&hlsearch
  else
    let &hlsearch=a:1
  end
  return oldhlsearch
endfunction

function! TrimSpaces() range
  let oldhlsearch=ShowSpaces(1)
  execute a:firstline.",".a:lastline."substitute ///gec"
  let &hlsearch=oldhlsearch
endfunction

command! -bar -nargs=? ShowSpaces call ShowSpaces(<args>)
command! -bar -nargs=0 -range=% TrimSpaces <line1>,<line2>call TrimSpaces()

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()

function! DoFormatJSON()
  :%!python -m json.tool
endfunction
command! FormatJSON call DoFormatJSON()
