if has("unix")
    let &runtimepath=&runtimepath . ',~/.vim/bundle/vim-force.com'
elseif has("win32")
    let &runtimepath=&runtimepath . ',c:\Documents and Settings\username\vimfiles\vim-force.com'
endif
runtime ftdetect/vim-force.com.vim
let g:apex_backup_folder="/tmp/apex/backup"
let g:apex_temp_folder="/tmp/apex/temp"
let g:apex_properties_folder="/home/stephan/apex-properties"
let g:apex_tooling_force_dot_com_path="/home/stephan/tooling-force.com/tooling-force.com-0.4.0.2.jar"
let g:apex_workspace_path="/home/stephan/Projects/"
