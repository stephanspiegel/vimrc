" FZF: fuzzy finder
" https://github.com/junegunn/fzf.vim
if ! exists(':FZF')
    finish
endif
nnoremap <D-p> :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GitFiles<CR>
nnoremap <leader>c :Commands<CR>
nnoremap <leader>h :History<CR>
