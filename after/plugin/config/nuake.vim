" Nuake: Quake style terminal
" https://github.com/Lenovsky/nuake
if ! exists(':Nuake')
    finish
endif
nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>

