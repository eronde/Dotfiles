set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
"NeoBundleFetch 'Shougo/neobundle.vim'
Bundle 'gmarik/vundle'
Bundle 'Shougo/vimproc', { 'build' : { 'unix' : 'make' }, }
  
Bundle 'gregsexton/VimCalc'

"  Bundle 'hotoo/calendar-vim'
"  Bundle 'Stormherz/tablify'
"  Bundle 'bling/vim-bufferline'
"  Bundle 'hwrod/interactive-replace'
  Bundle 'jeetsukumaran/vim-buffergator'
  Bundle 'kien/ctrlp.vim'
"  Bundle 'mbbill/undotree'
"  Bundle 'mtth/locate.vim'
"  Bundle 'scrooloose/nerdtree'
  Bundle 'tacahiroy/ctrlp-funky'
  Bundle 'terryma/vim-multiple-cursors'
 Bundle 'tpope/vim-unimpaired'
  Bundle 'yonchu/accelerated-smooth-scroll'
  Bundle 'SirVer/ultisnips'
"  Bundle 'AzizLight/TaskList.vim'
 Bundle 'kien/rainbow_parentheses.vim'
  Bundle 'tpope/vim-commentary'
  Bundle 'mhinz/vim-signify'
"    Bundle 'xolox/vim-misc'
"" Navigation
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler.vim'
Bundle 'Shougo/vimshell.vim'
Bundle 'sjl/gundo.vim'
Bundle 'spiiph/vim-space'
Bundle 'Lokaltog/vim-easymotion'
"" UI Additions
  Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'godlygeek/csapprox'
Bundle 'Rykka/colorv.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
"" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
"" Automatic Helpers
"Bundle 'IndexedSearch'
Bundle 'Raimondi/delimitMate'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'scrooloose/syntastic'
Bundle 'gregsexton/MatchTag'
"Bundle 'Shougo/neocomplete.vim'
"Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'majutsushi/tagbar'
"Bundle 'mattn/emmet-vim'
Bundle 'mhinz/vim-startify'
Bundle 'othree/vim-autocomplpop'
Bundle 'Valloric/YouCompleteMe'
"" Language Additions
"Bundle 'dag/vim2hs'
"Bundle 'vecio/lispp.vim'
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'tpope/vim-rails'
"Bundle 'tpope/vim-haml'
"""undle 'vim-pandoc/vim-pandoc'
"Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'othree/html5.vim'
"Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
"Bundle 'avakhov/vim-yaml'
"Bundle 'vim-scripts/DrawIt'
"Bundle 'git://fedorapeople.org/home/fedora/wwoods/public_git/vim-scripts.git'
"Bundle 'Shougo/vinarise.vim'
Bundle 'vim-scripts/OmniCppComplete'
Bundle 'Rip-Rip/clang_complete'
"Bundle 'marijnh/tern_for_vim'
Bundle 'shawncplus/phpcomplete.vim'

Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'jmcantrell/vim-virtualenv'
"" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'xuhdev/SingleCompile'
""Bundle      'WolfgangMehner/vim-plugins'
""
"BundleCheck
"" call vundle#end(s
"filetype plugin indent on
