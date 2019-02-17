set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Pear Tree: A painless, powerful Vim auto-pair plugin.
Plugin 'https://github.com/tmsvg/pear-tree'
" enable smart pairs
let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 0
let g:pear_tree_smart_backspace = 0

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
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" Syntastic: syntax checker
" replace with ale?
Plugin 'vim-syntastic/syntastic'

" Json language support
Plugin 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

" Emmet: HTML templating
Plugin 'mattn/emmet-vim'

" HTML5-syntax: html5 syntax highlighting
Plugin 'othree/html5-syntax.vim'

" HTML5: html5 autocomplete
Plugin 'othree/html5.vim'

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
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:snips_author="stephan.spiegel"

" Add mapping for completion of snippets
inoremap <silent> <c-x><c-z> <c-r>=<sid>ulti_complete()<cr>

function! s:ulti_complete() abort
    if empty(UltiSnips#SnippetsInCurrentScope(1))
        return ''
    endif
    let contain_word = 'stridx(v:val, word_to_complete)>=0'
    let candidates = map(filter(keys(g:current_ulti_dict_info), contain_word),
                   \  "{
                   \      'word': v:val,
                   \      'menu': '[snip] '. g:current_ulti_dict_info[v:val]['description'],
                   \      'dup' : 1,
                   \   }")
    let from_where = col('.') - len(word_to_complete)
    if !empty(candidates)
        call complete(from_where, candidates)
    endif
    return ''
endfunction
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
let g:ledger_default_commodity = 'USD'
let g:ledger_commodity_before = 1
let g:ledger_decimal_sep = '.'
let g:ledger_date_format = '%Y-%m-%d'
let g:ledger_align_at = 60

" Ledger-x: more ledger support
Plugin 'rcaputo/vim-ledger_x'

" CSV.vim: csv support
Plugin 'chrisbra/csv.vim'

" TODO: todo.txt support
Plugin 'vim-scripts/todo-txt.vim'

" unimpaired.vim
Plugin 'tpope/vim-unimpaired'

" Rest Console: Rest client
Plugin 'diepm/vim-rest-console'
let g:vrc_curl_opts = {
  \ '--connect-timeout' : 10,
  \ '-L': '',
  \ '--max-time': 60,
  \ '--ipv4': ''
  \}

" NetRanger: file explorer
Plugin 'ipod825/vim-netranger'

" VimDebugger: debug node
Plugin 'sidorares/node-vim-debugger'

"Vim-node: work with node
Plugin 'moll/vim-node'

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
let g:session_autoload = 'no'
let g:session_directory = '~/.vim/sessions'

" Gundo.vim: Undo tree viewer
Plugin 'sjl/gundo.vim'
nnoremap <leader>u :GundoToggle<CR>

" Bar Themes
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#tagbar#enabled = 0

" Themes
Plugin 'morhetz/gruvbox'
Plugin 'rakr/vim-two-firewatch'
let g:two_firewatch_italics=1
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
Plugin 'rakr/vim-one'
Plugin 'KKPMW/oldbook-vim'

call vundle#end()

colorscheme gruvbox
call neomake#configure#automake('w')
