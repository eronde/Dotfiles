
" Gui instellingen
" ================
"
if has("gui_running")	" gui aanwezig?
 syntax on			" syntaxgevoeligheid aan
 set hlsearch		" kleuren aan
 colors blue		" kleuren schema: blue, default, darkblue, evening
" set guioptions-=T		" geen gtk-toolbar
else				" geen gui
 set ch=2			" stel de commando-regel in op 2 regels
 set showcmd		" toon commando's tijdens typen
 "set background=dark " donkere achtergrond
endif				" einde gui-instellingen
"
" Kleurenterminalinstellingen
" ===========================
"
if &t_Co > 2		" kleurenterminal?
 syntax on			" syntaxgevoeligheid aan
 set hlsearch		" kleuren aan
" set guifont=10x20	" fonts
endif				" einde kleurenterminal
"
" -------------
" Interface
"---------------
set number relativenumber
set ruler
set number
set wrap
set laststatus=2
set cmdheight=1
set colorcolumn=128
set cursorline
set cursorcolumn
set showmatch
set matchtime=2
set mousehide
set mouse=a
set noerrorbells
set novisualbell
set t_Co=256
syntax enable
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_visibility='high'
colorscheme solarized

hi DiffAdd guifg=#bf7373 guibg=NONE gui=NONE,reverse ctermbg=83 ctermfg=256
hi DiffChange guifg=#b58900 guibg=NONE gui=NONE,reverse ctermbg=130 ctermfg=256
hi DiffDelete guifg=#dc322f guibg=NONE gui=NONE,reverse ctermbg=170 ctermfg=256
