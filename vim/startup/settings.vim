" Algemene instellingen
" =====================
"
"set shm=I			" Blokkeer introductie tekst
"set backup			" maak backupfile's
"set nocompatible    " Vim is niet Vi
"set backspace=indent,eol,start " backspacing over alles in insert mode
"set autoindent		" always set autoindenting on
"set history=1000		" houd 50 commando's in bewaring
"set visualbell      " geen gepiep, maar geflits
"set novb			" geen geflits maar gepiep
"set noeb			" zo weining mogelijk gebel of geflits
"set vb t_vb=		" geen gepiep
"set tabstop=4       " tab's op veelvouden van 4
"set shiftwidth=4	" afstand bij het automatisch inspringen
"set expandtab       " whitespace ipv tab
"set autowrite		" maak tussentijdse backup's
"set autoindent		" conservatieve cursorbeweging
"set ruler			" toon de positie van de cursor
"set showmode		" toont de status (mode) van de editor
"set grepprg=grep\ -nH\ $*
"
"set ffs=unix
"set enc=utf-8
"set wrap
"set complete=.,w,b,u,U
"
"set backup
"set backupdir=~/.vim/backup
"set directory=~/.vim/tmp
"set smartcase
"
"
""
""
"" Zoekinstellingen
"" ================
""
"set incsearch		" stapsgewijs zoeken
"set nowrapscan
"" set ignorecase	" maak geen onderscheid tussen grote en kleine letters
"set hlsearch		" oplichten van zoekacties
"set showmatch		" cursor springt naar gepaarde haak
""
"" Redefine keys for searches so that the search result is always in the middle
"" of the screen.
"" From Andrew W. Freeman [andrewf@voicenet.com] Thu 1999-05-13 11:36
"nmap n nmzz.`z
"nmap N Nmzz.`z
"nmap * *mzz.`z
"nmap # #mzz.`z
"nmap g* g*mzz.`z
"nmap g# g#mzz.`z
"
"
filetype plugin on
"" Menu
"" =====
""
source $VIMRUNTIME/menu.vim
set wildmenu
set wildmode=list:longest,full
set cpo-=<
set wcm=<C-Z>
map <F3> :emenu <C-Z>
map <F3> <ESC> :emenu <C-Z>
map! <F3> <ESC> :emenu <C-Z>
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
set background=dark
colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=0
let g:solarized_visibility='low'
syntax enable
" ---------------
" Text format
" ---------------
set encoding=utf-8
set cindent
set autoindent
set smarttab
set expandtab
set tabstop=4
set backspace=2
set shiftwidth=2
set backspace=2
set dir=$TEMP

" ---------------
" Behaviors
" ---------------
set autoread
set autowrite
set wildmenu
set hidden
set history=1024
set updatetime=1000
set cf
set clipboard+=unnamed
set timeoutlen=250
set foldlevelstart=99
set formatoptions=tcq
set complete=.,w,b,u,U
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set smartcase
set incsearch
set hlsearch
set tm=3000 "Timeout to 3000ms"
let mapleader='\\'
au FocusLost * :wa<CR>
" Keep search matches in the middle of the window.
nnoremap n nzzzv<CR>
nnoremap N Nzzzv
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

"set ofu=syntaxcomplete#Complete
"set g:ragtag_global_maps = 1
""let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
""let g:SuperTabDefaultCompletionType = "context"

    " OmniComplete {
"        if has("autocmd") && exists("+omnifunc")
"            autocmd Filetype *
"                \if &omnifunc == "" |
"                \setlocal omnifunc=syntaxcomplete#Complete |
"                \endif
"        endif

 ""       hi Pmenu  guifg=#000000 guibg=#F8F8F8 ctermfg=black ctermbg=Lightgray
""      hi PmenuSbar  guifg=#8A95A7 guibg=#F8F8F8 gui=NONE ctermfg=darkcyan ctermbg=lightgray cterm=NONE
 ""     hi PmenuThumb  guifg=#F8F8F8 guibg=#8A95A7 gui=NONE ctermfg=lightgray ctermbg=darkcyan cterm=NONE


        " automatically open and close the popup menu / preview window
       "au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
       "set completeopt=menu,preview,longest
    " }






" Tlist
" =====
"
let Tlist_Use_Right_Window = 1
let Tlist_Auto_Highlight_Tag = 1

let g:Powerline_symbols = 'fancy'
" ---------------
" startify
" ---------------
let g:startify_session_dir = '~/.vim/sessions'
let g:startify_show_sessions = 1
let g:startify_show_files = 1
let g:startify_show_files_number = 10
let g:startify_bookmarks = [ '~/.vimrc' ]

" ---------------
" unite.vim
" ---------------
let g:unite_data_directory = '~/.vim/cache/unite'
let g:unite_enable_start_insert = 1
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files = 1000
let g:unite_force_overwrite_statusline = 0
let g:unite_prompt = '» '
let g:unite_source_grep_command = 'ack'
let g:unite_source_grep_default_opts = '-H --nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
nnoremap <C-p> :Unite buffer file_rec/async file_mru<CR>
nnoremap <C-\> :Unite file<CR>
nnoremap <C-g> :Unite grep:.<CR>

" ---------------
" vimshell
" ---------------
let g:vimshell_temporary_directory = expand('~/.vim/cache/vimshell')
let g:vimshell_force_overwrite_statusline = 0

" ---------------
" vimfiler
" ---------------
let g:vimfiler_data_directory = '~/.vim/cache/vimfiler'
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_force_overwrite_statusline = 0
nnoremap <C-n> :VimFilerExplorer<CR>

" ---------------
" airline
" ---------------
"
let g:airline_right_sep = '◀'
"let g:airline_linecolumn_prefix = '¶ '
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline#extensions#paste#symbol = 'Þ'
let g:airline#extensions#whitespace#symbol = 'Ξ'
let g:airline_powerline_fonts = 1 
" ---------------
" neocomplete.vim
" ---------------
"let g:neocomplete#data_directory = '~/.vim/cache/neocomplete'
"let g:neocomplete#enable_at_startup = 1
"let g:neocomplete#enable_smart_case = 1
"let g:neocomplete#enable_fuzzy_completion = 1
"let g:neocomplete#enable_auto_delimiter = 1
"let g:neocomplete#enable_auto_close_preview = 1
"let g:neocomplete#auto_completion_start_length = 2
"let g:neocomplete#manual_completion_start_length = 0
"let g:neocomplete#min_keyword_length = 3
"let g:neocomplete#max_list = 100
"let g:neocomplete#force_overwrite_completefunc = 1
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#sources#tags#cache_limit_size = 8192000
"if !exists('g:neocomplete#force_omni_input_patterns')
"  let g:neocomplete#force_omni_input_patterns = {}
"endif
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
"if !exists('g:neocomplete#sources#omni#functions')
"  let g:neocomplete#sources#omni#functions = {}
"endif
"let g:neocomplete#sources#dictionary#dictionaries = {}
"let g:neocomplete#sources#vim#complete_functions = {
"      \ 'Ref' : 'ref#complete',
"      \ 'Unite' : 'unite#complete_source',
"      \ 'VimFiler' : 'vimfiler#complete',
"      \ 'Vinarise' : 'vinarise#complete',
"      \ 'VimShell' : 'vimshell#complete',
"      \ 'VimShellExecute' : 'vimshell#vimshell_execute_complete',
"      \ 'VimShellTerminal' : 'vimshell#vimshell_execute_complete',
"      \ 'VimShellInteractive' : 'vimshell#vimshell_execute_complete',
"      \}
"let g:neocomplete#keyword_patterns = {
"      \ '_' : '[0-9a-zA-Z:#_]\+',
"      \}
"inoremap <expr><C-f> pumvisible() ? "\<PageDown>" : "\<Right>"
"inoremap <expr><C-b> pumvisible() ? "\<PageUp>" : "\<Left>"
"inoremap <expr><C-y> pumvisible() ? neocomplete#close_popup() : "\<C-r>\""
"inoremap <expr><C-e> pumvisible() ? neocomplete#cancel_popup() : "\<End>"
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-n> pumvisible() ? "\<C-n>" : "\<C-x>\<C-u>\<C-p>\<Down>"
"inoremap <expr><C-p> pumvisible() ? "\<C-p>" : "\<C-p>\<C-n>"
"inoremap <expr><C-x><C-f> neocomplete#start_manual_complete('file')
"inoremap <expr><C-g> neocomplete#undo_completion()
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" : neocomplete#start_manual_complete()
"function! s:check_back_space()
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1] =~ '\s'
"endfunction
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
"" neosnippet.vim"
"let g:neosnippet#enable_snipmate_compatibility = 1
"let g:neosnippet#snippets_directory = '~/.vim/bundle/vim-snippets/snippets'
"imap <silent><C-k> <Plug>(neosnippet_expand_or_jump)
"smap <silent><C-k> <Plug>(neosnippet_expand_or_jump)

" ---------------
" gundo.vim
" ---------------
let g:gundo_width = 32
let g:gundo_preview_height = 16

" ---------------
" indent-guides
" ---------------
let g:indent_guides_auto_colors=1
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_color_change_percent=5
let g:indent_guides_guide_size=1
nmap <silent> <leader>i :IndentGuidesToggle<CR>

" ---------------
" Tabular
" ---------------
nmap <leader>t= :Tabularize /=<CR>
vmap <leader>t= :Tabularize /=<CR>
nmap <leader>t: :Tabularize /:\zs<CR>
vmap <leader>t: :Tabularize /:\zs<CR>
nmap <leader>t, :Tabularize /,\zs<CR>
vmap <leader>t, :Tabularize /,\zs<CR>
nmap <leader>t> :Tabularize /=>\zs<CR>
vmap <leader>t> :Tabularize /=>\zs<CR>

" ---------------
" zencoding
" ---------------
let g:user_zen_settings = {
      \  'php' : {
      \    'extends' : 'html',
      \    'filters' : 'c',
      \  },
      \  'xml' : {
      \    'extends' : 'html',
      \  },
      \  'haml' : {
      \    'extends' : 'html',
      \  },
      \  'eruby' : {
      \    'extends' : 'html',
      \  },
      \}

" ---------------
" vim-javascript
" ---------------
let g:html_indent_inctags = "body,head,tbody"
let g:html_indent_autotags = "th,td,tr,tfoot,thead"
let g:html_indent_sciript1 = "inc"
let g:html_indent_style1 = "inc"

" ---------------
" slimv
" mit-scheme
" ---------------
let g:slimv_impl = 'mit'
let g:slimv_disable_clojure = 1
let g:slimv_disable_lisp = 1
let g:scheme_builtin_swank = 1

" ---------------
" vim2hs
" ---------------
let g:haskell_hsp = 0

" --------------
" syntastic
" --------------
let g:syntastic_ignore_files = ['^/usr/include/']
let g:syntastic_c_config_file = '.syntastic_c_config'
let g:syntastic_c_check_header = 1
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_c_compiler_options = '-std=c99 -Wall'


"--------------
" YCM
"--------------

let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_collect_identifiers_from_tags_files = 1
"
"--------------
" python-mode
"--------------
"--------------
let g:pymode_rope = 0


" vim-pyenv
"--------------

" vim-pyenv Setup {{{
if jedi#init_python()
    function! s:jedi_auto_force_py_version() abort
        let major_version = pyenv#python#get_internal_major_version()
        call jedi#force_py_version(major_version)
    endfunction
    augroup vim-pyenv-custom-augroup
        au! *
        au User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
        au User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
    augroup END
endif
" }}}

"--------------
" jedi
"--------------
"
" Jedi Setup {{{
if exists(':NeoCompleteEnable')
  let g:jedi#popup_on_dot = 0
endif
let g:jedi#popup_on_dot = 1
let g:jedi#auto_initialization = 1
let g:jedi#show_call_signatures = 2
let g:jedi#auto_vim_configuration = 0
let g:jedi#show_call_signatures_delay = 0
if &rtp =~ '\<jedi\>'
  augroup JediSetup
    au!
    au FileType python
          \ setlocal omnifunc=jedi#completions  |
          \ call jedi#configure_call_signatures()
  augroup END
endif
" }}}

"" Add the virtualenv's site-packages to vim path
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUALENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(0, project_base_dir)
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF

"" Load up virtualenv's vimrc if it exists
"if filereadable($VIRTUAL_ENV . '/.vimrc')
"    source $VIRTUAL_ENV/.vimrc
"endif
""
