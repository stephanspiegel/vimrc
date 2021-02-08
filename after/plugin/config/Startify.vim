" Startify: menu on vim startup
" https://github.com/mhinz/vim-startify
if ! exists(':Startify')
    finish
endif
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
