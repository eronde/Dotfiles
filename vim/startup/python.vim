autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:pymode = 1
let g:pymode_python = 'python3'
let g:pymode_python = 'python3'
let g:pymode_indent = 1
"let g:pymode_doc = 1
"let g:pymode_doc_bind = 'K'


let g:jedi#completions_command="<F12>"
map <F2> <ESC>:!sh ../run_app.sh %<CR>
imap <F2> <ESC>:!sh ../run_app.sh %<CR>
" don't use linter, we use syntastic for that
let g:pymode_lint_on_write = 0

let g:pymode= 0
let g:pymode_lint_signs = 0
" don't fold python code on open
let g:pymode_folding = 0
" don't load rope by default. Change to 1 to use rope
let g:pymode_rope = 0
" open definitions on same window, and custom mappings for definitions and
" occurrences
let g:pymode_rope_goto_definition_bind = ',d'
let g:pymode_rope_goto_definition_cmd = 'e'
nmap ,D :tab split<CR>:PymodePython rope.goto()<CR>
nmap ,o :RopeFindOccurrences<CR>

let g:jedi#popup_select_first = 0
" let g:jedi#popup_on_dot = 0
