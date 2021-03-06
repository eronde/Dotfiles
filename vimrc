"
" ======================
" =  De  .vimrc file.  =
" ======================
"

call pathogen#infect()

" ===
source ~/.vim/startup/bundles.vim

" GUI
" ===
source ~/.vim/startup/gui.vim

" Toetsdefinities
" ==============
"
source ~/.vim/startup/mappings.vim
set whichwrap=b,s,<,>,[,]
"===================================
"
"Algemene instellingen
" =====================
"
source ~/.vim/startup/settings.vim
"    set nocompatible
"    autocmd!
"    filetype off
"    "call pathogen#runtime_append_all_bundles()
"    call pathogen#incubate()
"    call pathogen#helptags()
"    filetype plugin indent on
"    syntax on
"
" ===========Plugin===============
"
":runtime! plugin/*.vim

"
source ~/.vim/startup/functions.vim
" File afhankelijke instellingen
" ==============================
"
source ~/.vim/startup/filedep.vim
let g:pymode = 0
"
"
" Spellingscontrolle
" ==================
"
let loaded_vimspell = 1
"let spell_executable = "aspell"
let spell_language_list = "nl,en,francais"
"let spell_exit_map = "<Leader>sq"
 :setlocal spell spelllang=nl,fr,en

:au BufReadPost * if exists("b:current_syntax")
:au BufReadPost *   let &dictionary = substitute("/home/eric/.vim/dict/FT.dict", "FT", b:current_syntax, "")
:au BufReadPost * endif
"
":nmap <M-w> :qa
":imap ^w :qa



" =================einde .vimrc ====================
