"text
"
"
set spell 
set spelllang=nl,en
set dictionary+=~/.vim/dict/nl.txt
"set complete+=kspell
set textwidth=100
if has("gui_running")	" gui aanwezig?
set guifont=21
"set tw=80
set formatoptions=tnmM
set lines=29
set columns=80
end 
set completeopt-=noselect
set completeopt+=longest
