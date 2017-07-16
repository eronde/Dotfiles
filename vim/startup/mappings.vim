
"
" Toetsdefinities
" ==============
"
noremap Q q				" Q met q
"7"map q <ESC>:q<CR>
map <F4> :set paste
map! <F4> <ESC>:set paste
map <F5> :set nopaste
map! <F5> <ESC>:set nopaste
map <F6> :w!
map! <F6> <ESC>:w!
map <F6> <ESC>:w!
map <F7> :wqa!<CR>
map! <F7> <ESC>:wqa!<CR>
map <F8> :qall!<CR>
map! <F8> <ESC>:qall!<CR>
map <F9> /
map! <F9> <ESC>/
map <C-F9> s/
map! <C-F9> <ESC>s/
map <F10> :Special<CR>
map! <F10> <ESC>:sav<CR>
noremap <silent> <F11> <C-X><C-O>
map  <F11> <C-X><C-O>
map! <silent> <F11>   <C-X><C-O>
"noremap <tab> <C-P>
"map <HOME> 1G
"map! <HOME> <ESC>1G
"map <END> G
"map! <END> <ESC>G
map <C-u> u
imap <C-u> <C-O>u
cmap <C-u> <C-C><C-u>
map <t_%9> u
imap <t_%9> <C-O>u
cmap <t_%9> <C-C><t_%9>
map <C-r> <C-R>
imap <C-r> <C-O><C-R>
cmap <C-r> <C-C><C-r>
map <C-t_%9> <C-R>
imap <C-t_%9> <C-O><C-R>
cmap <C-t_%9> <C-C><C-t_%9>


" Map Ctrl-Tab, C-shift-tab, Ctl-T to NextTab, PrevTab, NewTab
map <M-.> :tabn<CR>
imap <M-.> :tabn<CR>
map <M-,> :tabp<CR>
imap <M-,> :tabp<CR>
nmap <M-,> :tabp<CR>
map gy :tabp<CR>
"split navigation
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


"===================================
" Compile single file
" =================================
nmap <F11> :SCCompile<cr>
nmap <F12> :SCCompileRun<cr>
map <S-A-F10> :TagbarToggle<CR>
"map <S-A-F10> :TagbarToggle<CR>:TlistAddFilesRecursive . *.{cpp,c,C,h,hpp,cc,cxx}<CR>
imap <S-F12> <C-X><C-O>
nnoremap <SILENT> <M-/> <C-W><C-W>
nmap <M-/> <C-W><C-W>
nnoremap <M-/> <C-W><C-W>
imap <M-/> <C-W><C-W>
inoremap <M-/> <C-W><C-W>
vmap <M-/> <C-W><C-W>

nmap <M-/> <C-W><C-W>
nnoremap <M-/> <C-W><C-W>
vmap <M-/> <C-W><C-W>
vnoremap <M-/> <C-W><C-W>
""" Code folding options
noremap <silent> f0 <ESC> :set foldlevel=0<CR>
    nmap <silent> f1 :set foldlevel=1<CR>
    nmap <leader>f2 :set foldlevel=2<CR>
    nmap <leader>f3 :set foldlevel=3<CR>
    nmap <leader>f4 :set foldlevel=4<CR>
    nmap <leader>f5 :set foldlevel=5<CR>
    nmap <leader>f6 :set foldlevel=6<CR>
    nmap <leader>f7 :set foldlevel=7<CR>
    nmap <leader>f8 :set foldlevel=8<CR>
    nmap <leader>f9 :set foldlevel=9<CR>

"
" Cutting/pasting zonder Functietoetsen kan met:

" Set leader to ,
let mapleader=","

" Window Movement
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Common tasks
imap <C-l> <C-x><C-l>
nmap <leader>q' ciw'<Esc>p<Esc>
" p  (F2)  paste
" v  (F3)  mark (copy)
" x  (F4)  cut
"
" undo met u of ctrl-u
" redo met ctrl-r
"
" map dead keys (alt-shift dollar geeft in insert-mode ook een ¤)
" :imap =c     ¤
" :imap c=     ¤
"
" Buffer pipes: (grep, sort etc.)
"
" :%!sort
"
" Om door regels heen te scrollen met de cursortoetsen,
" moet dit blijkbaar als laatste:
"

"
" Compile and run java file
" =========================
"
"
"":compiler! javac
""set errorformat=%A%f:%l:\ %m,%C%m

""set makeprg=javac\ %
""set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#

"Map Alt= to compile the current file in a command window just like javac to
"see a confusing
";
""noremap <F2> <ESC> :w! <CR> :make <CR>
"map! <ESC> <M-1> :make <CR>
"
""Map Alt1 to compile and show error at the bottom.
"noremap <M-1> :set shellpipe=2><CR>:w<CR>:set ch=5<CR>:make -g -d classes  -sourcepath .;src  -classpath .;classes;ext\jcalendar.jar;ext\jdom.jar;ext\log4j.jar;  %:p<CR>

"Map Alt2 to show previous message.
""noremap <M-2> :cp
"
""Map Alt3 to show next message.
""noremap <M-3> :cn

"Map Alt4 to show all messages, useful if only one message that disappears.
""noremap <M-4> :cl :compiler! javac
""set errorformat=%A%f:%l:\ %m,%C%m
"
""Map Alt= to compile the current file in a command window just like javac to see a confusing error message.
"noremap <M-=> :set shellpipe=  <CR>:w<CR>:set ch=5<CR>:make -g -d classes  -sourcepath .;src  -classpath .;classes;ext\jcalendar.jar;ext\jdom.jar;ext\log4j.jar;  %:p<CR>

"Map Alt1 to compile and show error at the bottom.
"noremap <M-1> :set shellpipe=2><CR>:w<CR>:set ch=5<CR>:make -g -d classes
"-sourcepath .;src  -classpath
".;classes;ext\jcalendar.jar;ext\jdom.jar;ext\log4j.jar;  %:p<CR>
"
""Map Alt2 to show previous message.
"noremap <M-2> :cp

"Map Alt3 to show next message.
"noremap <M-3> :cn
"
""Map Alt4 to show all messages, useful if only one message that disappears.
"noremap <M-4> :cl
"augroup filetypedetect
"	au BufNewFile,BufRead,BufEnter *.java
"	    \ map <S-F11> :w<CR>:!javac "%"<CR> |
"	    \ map <S-F12> :!java -cp %:p:h %:t:r<CR>
"augroup END
"

map <Leader> <Plug>(easymotion-prefix)

"youcompleteme
let g:ycm_key_list_select_completion = ['<Down>']

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"
"
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
