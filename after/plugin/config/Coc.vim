" Coc: language server support
" https://github.com/neoclide/coc.nvim
if ! exists(':CocRestart')
    finish
endif
" Coc-explorer
:nmap <space>e :CocCommand explorer<CR>

" Coc lsp mappings
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> sgr :sp<CR><Plug>(coc-references)
nmap <silent> vgr :vsp<CR><Plug>(coc-references)

command Reformat :call CocAction('format')

" mapping errors and warnings navigation
nnoremap ]x :call CocAction('diagnosticNext')<CR>
nnoremap [x :call CocAction('diagnosticPrevious')<CR>

" Show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

