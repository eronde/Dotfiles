
" build tags of your own project with Alt-shift-F12
map <M-S-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
autocmd FileType cpp set omnifunc=omni#cpp#complete#Main
set nocp

set tags+=~/.vim/tags/cpp
" OmniCppComplete
 let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_DisplayMode = 1
let OmniCpp_ShowScopeInAbbr = 0 "do not show namespace in pop-up
    let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
let OmniCpp_ShowAccess = 1 "show access in pop-up
    let OmniCpp_SelectFirstItem = 2 "select first item in pop-up
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ['std','_GLIBCXX_STD']



" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview


inoremap .. .<C-X><C-O>
