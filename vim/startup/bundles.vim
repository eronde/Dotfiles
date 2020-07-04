"set nocompatible
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc(expand('~/.vim/bundle/'))

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

  
Plug 'gregsexton/VimCalc'

"  Plug 'hotoo/calendar-vim'
"  Plug 'Stormherz/tablify'
"  Plug 'bling/vim-bufferline'
"  Plug 'hwrod/interactive-replace'
  Plug 'jeetsukumaran/vim-buffergator'
  Plug 'kien/ctrlp.vim'
"  Plug 'mbbill/undotree'
"  Plug 'mtth/locate.vim'
"  Plug 'scrooloose/nerdtree'
  Plug 'tacahiroy/ctrlp-funky'
  Plug 'terryma/vim-multiple-cursors'
 Plug 'tpope/vim-unimpaired'
  Plug 'yonchu/accelerated-smooth-scroll'
" Plug 'SirVer/ultisnips'
"  Plug 'AzizLight/TaskList.vim'
 Plug 'kien/rainbow_parentheses.vim'
  Plug 'tpope/vim-commentary'
  Plug 'mhinz/vim-signify'
  Plug  'henrik/vim-indexed-search'
"    Plug 'xolox/vim-misc'
"" Navigation
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'Shougo/vimshell.vim'
Plug 'sjl/gundo.vim'
"Plug 'spiiph/vim-space'
Plug 'Lokaltog/vim-easymotion'
"" UI Additions
  Plug 'nathanaelkane/vim-indent-guides'
Plug 'godlygeek/csapprox'
Plug 'Rykka/colorv.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
"" Commands
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
"" Automatic Helpers
"Plug 'IndexedSearch'
Plug 'Raimondi/delimitMate'
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/syntastic'
"Plug 'Shougo/neocomplete.vim'
"Plug 'Shougo/neosnippet'
Plug 'honza/vim-snippets'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim'
Plug 'mhinz/vim-startify'
"Plug 'L9'
"Completion
Plug 'skywind3000/vim-auto-popmenu'
Plug 'Valloric/YouCompleteMe', {'do' : 'python install.py --clang-completer'}
"Plug 'Valloric/YouCompleteMe', {'do' : 'python install.py --all'}
"" Language Additions
"Plug 'dag/vim2hs'
"Plug 'vecio/lispp.vim'
"Plug 'vim-ruby/vim-ruby'
"Plug 'tpope/vim-rails'
"Plug 'tpope/vim-haml'
"""undle 'vim-pandoc/vim-pandoc'
"Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'othree/html5.vim'
"Plug 'kchmck/vim-coffee-script'
Plug 'groenewege/vim-less'
"Plug 'avakhov/vim-yaml'
"Plug 'vim-scripts/DrawIt'
"Plug 'git://fedorapeople.org/home/fedora/wwoods/public_git/vim-scripts.git'
"Plug 'Shougo/vinarise.vim'
Plug 'vim-scripts/OmniCppComplete'
"Plug 'Rip-Rip/clang_complete'
"Plug 'marijnh/tern_for_vim'
Plug 'shawncplus/phpcomplete.vim'

Plug 'klen/python-mode'
"" Libraries
Plug 'tpope/vim-repeat'
Plug 'xuhdev/SingleCompile'
""Plug      'WolfgangMehner/vim-plugins'
Plug 'lervag/vimtex'
""
"BundleCheck
"" call vundle#end(s
"filetype plugin indent on 
Plug 'altercation/solarized'
Plug 'turbio/bracey.vim'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}

" assuming you're using vim-plug: https://github.com/junegunn/vim-plug
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" LanguageServer client for NeoVim.
Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': 'bash install.sh',
  \ }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'lambdalisue/vim-amake'
" colorscheme 
Plug 'morhetz/gruvbox'
" Local
Plug '/home/eric/.vim/plugged/suggest.vim'

call plug#end()
