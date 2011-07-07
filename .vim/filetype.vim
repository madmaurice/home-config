" Vim support file to detect file types
"

" Line continuation is used here, remove 'C' from 'cpoptions'
let s:cpo_save = &cpo
set cpo&vim

augroup filetypedetect

" VMWare config files are following same syntax as jproperties (Java)
au BufNewFile,BufRead *.vmx	setf jproperties

augroup end

" Restore 'cpoptions'
let &cpo = s:cpo_save
unlet s:cpo_save
