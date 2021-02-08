if ! exists(':VimwikiIndex')
    finish
endif
let main_wiki = {}
let main_wiki.path = '~/Projects/notes/'
let main_wiki.auto_toc = 1
let main_wiki.syntax = 'markdown'
let main_wiki.extension = '.wiki'
let g:vimwiki_list = [main_wiki]
let g:vimwiki_global_ext = 0
let g:markdown_folding = 1
