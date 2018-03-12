runtime ftdetect/vim-force.com.vim
if has("unix")
    let &runtimepath=&runtimepath . ',~/.vim/bundle/vim-force.com'
elseif has("win32")
    let &runtimepath=&runtimepath . ',c:\Documents and Settings\username\vimfiles\vim-force.com'
endif
let g:apex_backup_folder=$HOME . "/apex/backup"
let g:apex_temp_folder=$HOME . "/apex/temp"
let g:apex_properties_folder=$HOME . "/apex-properties"
let g:apex_tooling_force_dot_com_path=$HOME . "/.vim/tooling-force.com/tooling-force.com-0.4.0.2.jar"
