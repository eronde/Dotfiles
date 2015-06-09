
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
set t_Co=256
set background=dark
colorscheme solarized
