inoremap .. <C-X><C-O>
" build tags of your own project with Alt-shift-F12
map <M-S-F12> :!ctags -R --sort=yes --languages=php .<CR>
autocmd FileType php,inc set omnifunc=phpcomplete#CompletePHP number


" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
