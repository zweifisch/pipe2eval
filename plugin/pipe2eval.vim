
com! -nargs=+ Pipe2 call Pipe2eval(<f-args>)

let g:pipe2eval = expand('<sfile>:p:h') . '/pipe2eval.sh'

function! Pipe2eval(lang)
	execute "vm <buffer> <space> :!". g:pipe2eval ." ". a:lang . "<CR>"
endfunction

au FileType * call Pipe2eval(&filetype)
