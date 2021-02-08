" Fugitive: git support
" https://github.com/tpope/vim-fugitive
if ! exists(':G')
    finish
endif
" Fugitive conflict resolution
nnoremap gdt :diffget //2<CR>
nnoremap gdm :diffget //3<CR>

