
"
" File afhankelijke instellingen
" ==============================
"

"======================================
"TODO
"Does not load correcly, filetype mapping does not load
"========================================




    " enable ncm2 for all buffers autocmd BufEnter * call ncm2#enable_for_buffer()
if has("autocmd")
  " Enable file type detection.
  filetype plugin on
  filetype indent on
  autocmd FileType text setlocal textwidth=78
  autocmd FileType text setlocal wrapmargin=72
  autocmd FileType tex  set number
  autocmd BufRead,BufNewFile *.tex set filetype=tex

  "autocmd FileType python set omnifunc=pythoncomplete#Complet number
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType c set omnifunc=ccomplete#Complete
  autocmd BufNewFile,BufRead cpp,h,cxx,hxx source ~/.vim/startup/cpp.vim
  autocmd BufNewFile,BufRead *.txt source ~/.vim/startup/txt.vim
  autocmd BufNewFile,BufRead *.js source ~/.vim/startup/js.vim
  autocmd BufNewFile,BufRead *.py source ~/.vim/startup/python.vim
  autocmd BufNewFile,BufRead *.php source ~/.vim/startup/php.vim
  autocmd BufNewFile,BufRead *.vim source ~/.vim/startup/vim.vim
  autocmd BufNewFile,BufRead *.css source ~/.vim/startup/css.vim
  autocmd BufNewFile,BufRead *.scss source ~/.vim/startup/css.vim
  "autocmd FileType c,cpp :call C_InitMenus()
  au BufRead,BufNewFile *.php set ft=php.html

  autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
  augroup gzip
   autocmd!
   autocmd BufReadPre,FileReadPre	*.gz set bin
   autocmd BufReadPost,FileReadPost	*.gz '[,']!gunzip
   autocmd BufReadPost,FileReadPost	*.gz set nobin
   autocmd BufReadPost,FileReadPost	*.gz execute ":doautocmd BufReadPost " . expand("%:r")
   autocmd BufWritePost,FileWritePost	*.gz !mv <afile> <afile>:r
   autocmd BufWritePost,FileWritePost	*.gz !gzip <afile>:r
   autocmd FileAppendPre		*.gz !gunzip <afile>
   autocmd FileAppendPre		*.gz !mv <afile>:r <afile>
   autocmd FileAppendPost		*.gz !mv <afile> <afile>:r
   autocmd FileAppendPost		*.gz !gzip <afile>:r
  augroup END	"gzip group
  "
  augroup bzip2
   autocmd!
   autocmd BufReadPre,FileReadPre	*.bz2 set bin
   autocmd BufReadPost,FileReadPost	*.bz2 '[,']!bunzip2
   autocmd BufReadPost,FileReadPost	*.bz2 set nobin
   autocmd BufReadPost,FileReadPost	*.bz2 execute ":doautocmd BufReadPost " . expand("%:r")
   autocmd BufWritePost,FileWritePost	*.bz2 !mv <afile> <afile>:r
   autocmd BufWritePost,FileWritePost	*.bz2 !bzip2 <afile>:r
   autocmd FileAppendPre		*.bz2 !bunzip2 <afile>
   autocmd FileAppendPre		*.bz2 !mv <afile>:r <afile>
   autocmd FileAppendPost		*.bz2 !mv <afile> <afile>:r
   autocmd FileAppendPost		*.bz2 !bzip2 <afile>:r
  augroup END	"bzip2 group
endif " has("autocmd")

"
"map tags :!exctags -R --c++-kinds=+p --fields=+iaS --extra=+q . <CR>
"set tags+=~/.vim/dev_tags/qt4.ctags
"set tags+=~/.vim/dev_tags/gtk.ctags
"set tags+=~/.vim/dev_tags/gtkmm.ctags
"set tags+=./tags
"//autocmd

let g:ycm_filetype_blacklist = {'text':1, 'markdown':1, 'php':1}
let g:apc_enable_ft = {'text':1, 'markdown':1}
"let g:apc_enable_ft = {'text':1, 'markdown':1, 'php':1}
