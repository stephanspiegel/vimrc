if has("unix")
    let &runtimepath=&runtimepath . ',~/.vim/bundle/vim-force.com'
    let g:apex_tooling_force_dot_com_path="/home/stephan/tooling-force.com/tooling-force.com-assembly-v0.4.2.0.jar"
    let g:apex_properties_folder="/home/stephan/apex-properties"
    let g:apex_backup_folder="/tmp/apex/backup"
    let g:apex_temp_folder="/tmp/apex/temp"
    let g:apex_workspace_path="/home/stephan/Projects/"
elseif has("win32")
    let &runtimepath=&runtimepath . ',c:\\tools\\vimfiles\\vim-force.com'
    let g:apex_tooling_force_dot_com_path="c:\\tools\\vimfiles\\vim-force.com\\tooling-force.com-0.4.0.2.jar"
    let g:apex_properties_folder="c:\\users\\sspiegel\\apex-properties"
    let g:apex_backup_folder="c:\\tools\\vimfiles\\apex\\backup"
    let g:apex_temp_folder="c:\\tools\\vimfiles\\apex\\temp"
    let g:apex_diff_cmd="kdiff3"
endif
runtime ftdetect/vim-force.com.vim
