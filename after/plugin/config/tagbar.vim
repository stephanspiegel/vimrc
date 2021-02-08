" Tag Bar: Display tags
" https://github.com/majutsushi/tagbar
if ! exists(':Tagbar')
    finish
endif
" show tags in the order they appear in the source
let g:tagbar_sort = 0
" show tagbar at top
let g:tagbar_vertical = 10
let g:tagbar_left = 1

" F7 to toggle tag bar
nmap <F7> :TagbarToggle<CR>

