
" ===========comments===============
"Menu items for Commenting and Un-Commenting code
amenu 20.435 &Edit.-SEP4- :
amenu Edit.Comment <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call Comment(fl, ll)<CR>
amenu Edit.UnComment <Esc>`<:let fl=line(".")<CR>`>:let ll=line(".")<CR>:call UnComment(fl, ll)<CR>

"Function for commenting a block of Visually selected text
function Comment(fl, ll)
  let i=a:fl
  let comment="//"
  while i<=a:ll
    let cl=getline(i)
    let cl2=comment.cl
    call setline(i, cl2)
    let i=i+1
  endwhile
endfunction

"Function for Un-Commenting a block of Visually selected text
function UnCommENT(FL, LL)
  let i=a:fl
  let comment="//"
  while i<=a:ll
    let cl=getline(i)
    let cl2=substitute(cl, "//", "", "")
    call setline(i, cl2)
    let i=i+1
  endwhile
endfunction
au FileType haskell,vhdl,ada let b:comment_leader ='-- '
au FileType vim let b:comment_leader ='" '
au FileType c,cpp,java let b:comment_leader ='// '
au FileType php,sh,make,conf let b:comment_leader ='# '
au FileType tex let b:comment_leader ='% '

" default"
" noremap <silent> ,, :<C-B>sil <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:noh<CR>
" noremap <silent> ,. :<C-B>sil <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:noh<CR>
" a
" Html comment
noremap <silent> ;zz :<C-B>sil <C-E>s/^\(.*\)$/<!-- \1 -->/<CR><Esc>:nohlsearch<CR>
noremap <silent> ;zx :<C-B>sil <C-E>s/^\(<!--\) \(.*\) \(-->\)$/\2/ <CR><Esc>:nohlsearch<CR>

"/* */
noremap <silent> ,c :<C-B>sil <C-E>s/^\(.*\)$/\/\*\1\*\//<CR><Esc>:nohlsearch<CR>
noremap <silent> .c :<C-B>sil <C-E>s/^\(\/\*\)\(.*\)\(\*\/\)$/\2/ <CR><Esc>:nohlsearch<CR>


" ----------------------------------------
" Auto commands
" ----------------------------------------
" :o formatting on o key newlines
"autocmd BufNewFile,BufEnter * set formatoptions-=o
"" No more complaining about untitled documents
"autocmd FocusLost silent! :wa
"" When editing a file, always jump to the last cursor position.
"autocmd BufReadPost *
"      \ if line("'\"") > 1 && line ("'\"") <= line("$") |
"      \   exe "normal! g`\"" |
"      \ endif
"" When save a file, strip the spaces in the end
"autocmd BufWritePre * :%s/\s\+$//ge
"" Set omnifunc for those withou that
"autocmd Filetype *
"      \ if &omnifunc == "" |
"      \   setlocal omnifunc=syntaxcomplete#Complete |
"      \ endif

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>

"function! CleverTab()
"  if pumvisible()
"    return "\<C-N>"
"  endif
"  if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"    return "\<Tab>"
"  elseif exists('&omnifunc') && &omnifunc != ''
"    return "\<C-X>\<C-O>"
"  else
"    return "\<C-N>"
"  endif
"endwhile
  "
