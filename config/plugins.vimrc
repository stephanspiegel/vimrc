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

" Cargo: cargo support for rust projects
Plugin 'timonv/vim-cargo'

" vim force: Salesforce support
Plugin 'neowit/vim-force.com'
" see \config\vim-force.com.vimrc for configuration

Plugin 'tpope/vim-fugitive'

" Rainbow: show matching braces in matching colors
Plugin 'luochen1990/rainbow'

" Syntastic: syntax checker
Plugin 'vim-syntastic/syntastic'

" Json language support
Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

" Emmet: HTML templating
Plugin 'mattn/emmet-vim'

" Table Mode: create and manipulate ASCII tables
Plugin 'dhruvasagar/vim-table-mode'

" Tag List: Display tags
Plugin 'vim-scripts/taglist.vim'

" Tag Bar: Display tags
Plugin 'majutsushi/tagbar'
" show tags in the order they appear in the source
let g:tagbar_sort = 0

" Ultisnips: Snippets management
Plugin 'sirver/ultisnips'

" Snippets: bunch of snippets for Ultisnips
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/.vim/config/UltiSnips"

" Javascript language support
Plugin 'pangloss/vim-javascript'

" JSX: jsx syntax highlighting and indenting
Plugin 'mxw/vim-jsx'

" Elm: elm language support
Plugin 'ElmCast/elm-vim'

" Togglelist: toggle Location and Quickfix lists
Plugin 'milkypostman/vim-togglelist'

" CtrlP: fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif

" RipGrep: faster grep
Plugin 'jremmen/vim-ripgrep'

" Surround: surround with quotes, brackets, etc.
Plugin 'tpope/vim-surround'

" Identline: show indent levels
Plugin 'Yggdroot/indentLine'

" Support for ledger accounting files
Plugin 'ledger/vim-ledger'

" TODO: todo.txt support
Plugin 'vim-scripts/todo-txt.vim'

" EasyMotion: movement hints
Plugin 'easymotion/vim-easymotion'

" Startify: menu on vim startup
Plugin 'mhinz/vim-startify'
function! s:list_sessions()
    let sessions = map(split(globpath(g:session_directory, '*.vim'), '\n'), {index, val -> fnamemodify(val, ':t:r')})
    return map(sessions, '{"line": v:val, "cmd": "OpenSession " . v:val}')
endfunction

let g:startify_lists = [
      \ { 'type': function('s:list_sessions'),  'header': ['   Sessions']       },
      \ { 'type': 'commands',                   'header': ['   Commands']       },
      \ { 'type': 'files',                      'header': ['   MRU']            },
      \ { 'type': 'dir',                        'header': ['   MRU '. getcwd()] },
      \ { 'type': 'bookmarks',                  'header': ['   Bookmarks']      },
      \ ]

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
let g:session_autosave = 'yes'
let g:session_directory = '~/.vim/sessions'

" Themes
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
Plugin 'junegunn/seoul256.vim'
Plugin 'wimstefan/vim-artesanal'
Plugin 'HenryNewcomer/vim-theme-underflow'
Plugin 'yuttie/inkstained-vim'

call vundle#end()
