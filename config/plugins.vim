if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/vimfiles/bundle')

" Elm: elm language support
Plug 'ElmCast/elm-vim'

" Nuake: Quake style terminal
Plug 'Lenovsky/nuake'
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>

" Identline: show indent levels
Plug 'Yggdroot/indentLine'
let g:indentLine_char = '┊'
let g:indentLine_fileTypeExclude = ['help']

" Gitgutter: display git diff info
Plug 'airblade/vim-gitgutter'

" CSV.vim: csv support
Plug 'chrisbra/csv.vim'

" CtrlP: fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    let g:ctrlp_use_caching = 0
endif

" Table Mode: create and manipulate ASCII tables
Plug 'dhruvasagar/vim-table-mode'

" Rest Console: Rest client
Plug 'diepm/vim-rest-console'
let g:vrc_curl_opts = {
  \ '--connect-timeout' : 10,
  \ '-L': '',
  \ '--max-time': 60,
  \ '--ipv4': ''
  \}

" Json language support
Plug 'elzr/vim-json'
let g:vim_json_syntax_conceal = 0

"CapsLock: software capslock
Plug 'tpope/vim-capslock'

" Pear Tree: A painless, powerful Vim auto-pair plugin.
Plug 'https://github.com/tmsvg/pear-tree'
" enable smart pairs
let g:pear_tree_smart_openers = 0
let g:pear_tree_smart_closers = 0
let g:pear_tree_smart_backspace = 0

" Commentary: comment out lines of code
Plug 'tpope/vim-commentary'

" Neomake: build automation
Plug 'neomake/neomake'

" Automatically set tabstop
Plug 'tpope/vim-sleuth'

" Vim Vinegar: Simplify netrw
Plug 'tpope/vim-vinegar'

" rust.vim: rust language support
Plug 'rust-lang/rust.vim'

" Cargo: cargo support for rust projects
Plug 'timonv/vim-cargo'

" vim force: Salesforce support
Plug 'neowit/vim-force.com'
" see \config\vim-force.com.vimrc for configuration

Plug 'tpope/vim-fugitive'

" Rainbow: show matching braces in matching colors
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

Plug 'mattn/calendar-vim'
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
autocmd FileType vimwiki map <buffer> <Leader>x <Plug>VimwikiToggleListItem
autocmd FileType vimwiki map <buffer> <Leader>c :call ToggleCalendar()<CR>
autocmd BufRead,BufNewFile *.md set filetype=vimwiki.markdown
function! ToggleCalendar()
  execute ":Calendar"
  if exists("g:calendar_open")
    if g:calendar_open == 1
      execute "q"
      unlet g:calendar_open
    else
      g:calendar_open = 1
    end
  else
    let g:calendar_open = 1
  end
endfunction


" Ale: linter
Plug 'w0rp/ale'

let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save =1
let g:ale_lint_on_filetype_changed = 1
let g:ale_java_pmd_options = '-R rulesets/apex/ruleset.xml'

" Emmet: HTML templating
Plug 'mattn/emmet-vim'

" HTML5-syntax: html5 syntax highlighting
Plug 'othree/html5-syntax.vim'

" HTML5: html5 autocomplete
Plug 'othree/html5.vim'

" Tag List: Display tags
Plug 'vim-scripts/taglist.vim'

" Tag Bar: Display tags
Plug 'majutsushi/tagbar'
" show tags in the order they appear in the source
let g:tagbar_sort = 0

" Ultisnips: Snippets management
Plug 'sirver/ultisnips'

" Snippets: bunch of snippets for Ultisnips
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsSnippetsDir='~/.vim/config/UltiSnips'
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:snips_author='stephan.spiegel'

" Javascript language support
Plug 'pangloss/vim-javascript'

" JSX: jsx syntax highlighting and indenting
Plug 'mxw/vim-jsx'

" Togglelist: toggle Location and Quickfix lists
Plug 'milkypostman/vim-togglelist'

" RipGrep: faster grep
Plug 'jremmen/vim-ripgrep'

" Surround: surround with quotes, brackets, etc.
Plug 'tpope/vim-surround'

" Support for ledger accounting files
Plug 'ledger/vim-ledger'
let g:ledger_default_commodity = 'USD'
let g:ledger_commodity_before = 0
let g:ledger_commodity_sep = ' '
let g:ledger_decimal_sep = '.'
let g:ledger_date_format = '%Y-%m-%d'
let g:ledger_align_at = 60
augroup Ledger
  autocmd!
  autocmd FileType ledger nnoremap <silent> <leader>c :call ledger#transaction_state_set(line('.'), '*')<CR>
  autocmd FileType ledger inoremap <silent> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
  autocmd FileType ledger vnoremap <silent> <Tab> :LedgerAlign<CR>
augroup END

" Ledger-x: more ledger support
Plug 'rcaputo/vim-ledger_x'

" TODO: todo.txt support
Plug 'vim-scripts/todo-txt.vim'

" unimpaired.vim
Plug 'tpope/vim-unimpaired'

" VimDebugger: debug node
Plug 'sidorares/node-vim-debugger'

"Vim-node: work with node
Plug 'moll/vim-node'

" Startify: menu on vim startup
Plug 'mhinz/vim-startify'
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

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
let g:session_autosave = 'yes'
let g:session_autoload = 'no'
let g:session_directory = '~/.vim/sessions'

" Gundo.vim: Undo tree viewer
Plug 'sjl/gundo.vim'
nnoremap <leader>u :GundoToggle<CR>


" Coc: language server support
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Vim Spotlightify: better search highlighting
Plug 'fcpg/vim-spotlightify'

" Bar Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='base16'
let g:airline#extensions#tagbar#enabled = 0
let g:airline#extensions#ale#enabled = 1

" Themes
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-two-firewatch'
let g:two_firewatch_italics=1
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'machakann/vim-colorscheme-tatami'
Plug 'szorfein/darkest-space'
Plug 'dennougorilla/azuki.vim'
Plug 'ajmwagar/vim-deus'
Plug 'nightsense/stellarized'
Plug 'thenewvu/vim-colors-sketching'
Plug 'junegunn/seoul256.vim'
Plug 'wimstefan/vim-artesanal'
Plug 'HenryNewcomer/vim-theme-underflow'
Plug 'yuttie/inkstained-vim'
Plug 'rakr/vim-one'
Plug 'KKPMW/oldbook-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'

call plug#end()

colorscheme gruvbox
call neomake#configure#automake('w')
