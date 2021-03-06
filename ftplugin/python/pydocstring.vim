" File:     pydocstring.vim
" Author:   Shinya Ohyanagi <sohyanagi@gmail.com>
" Version:  0.0.3
" WebPage:  http://github.com/heavenshell/vim-pydocstriong/
" Description: Generate Python docstring to your Python script file.
" License: BSD, see LICENSE for more details.

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=0 -buffer -complete=customlist,pydocstring#insert Pydocstring call pydocstring#insert()

nnoremap <silent> <buffer> <Plug>(pydocstring) :call pydocstring#insert()<CR>
if !hasmapto('<Plug>(pydocstring)')
  nmap <silent> <C-d> <Plug>(pydocstring)
endif

let &cpo = s:save_cpo
unlet s:save_cpo
