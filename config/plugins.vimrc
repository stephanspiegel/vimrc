set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Auto Pairs: insert or delete brackets, parens, quotes in pairs
Plugin 'jiangmiao/auto-pairs'

" Commentary: comment out lines of code
Plugin 'tpope/vim-commentary'

" Neomake: build automation
Plugin 'neomake/neomake'

" Gitgutter: display git diff info
Plugin 'airblade/vim-gitgutter'

" Automatically set tabstop
Plugin 'tpope/vim-sleuth'

" Vim Vinegar: Simplify netrw
Plugin 'tpope/vim-vinegar'

" rust.vim: rust language support
Plugin 'rust-lang/rust.vim'

" vim force: Salesforce support
Plugin 'neowit/vim-force.com'

Plugin 'tpope/vim-fugitive'

" Rainbow: show matching braces in matching colors
Plugin 'luochen1990/rainbow'

" Syntastic: syntax checker
Plugin 'vim-syntastic/syntastic'

" Json language support
Plugin 'elzr/vim-json'

" Emmet: HTML templating
Plugin 'mattn/emmet-vim'

" Table Mode: create and manipulate ASCII tables
Plugin 'dhruvasagar/vim-table-mode'

" Tag List: Display tags
Plugin 'vim-scripts/taglist.vim'

" Tag Bar: Display tags
Plugin 'majutsushi/tagbar'

" Ultisnips: Snippets management
Plugin 'sirver/ultisnips'

" Javascript language support
Plugin 'pangloss/vim-javascript'

" JSX: jsx syntax highlighting and indenting
Plugin 'mxw/vim-jsx'

" Elm: eml language support
Plugin 'ElmCast/elm-vim'

" Togglelist: toggle Location and Quickfix lists
Plugin 'milkypostman/vim-togglelist'

" CtrlP: fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" RipGrep: faster grep
Plugin 'jremmen/vim-ripgrep'

" Obsession: better session handling
Plugin 'tpope/vim-obsession'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tagbar#enabled = 0

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-two-firewatch'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'machakann/vim-colorscheme-tatami'
Plugin 'szorfein/darkest-space'
Plugin 'dennougorilla/azuki.vim'
Plugin 'ajmwagar/vim-deus'
Plugin 'nightsense/stellarized'
Plugin 'thenewvu/vim-colors-sketching'

call vundle#end()
