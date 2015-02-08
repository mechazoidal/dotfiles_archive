" this file should be source'd from .vimrc

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" original submodule'd bundles
Plugin 'airblade/vim-rooter'
Plugin 'scrooloose/syntastic'

Plugin 'vimwiki/vimwiki'
Plugin 'samsonw/vim-task'
" fork that combines both
"Bundle 'weierophinney/vimwiki'

Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'

" meant for clojure def, but can be used by standard?
" however, it might interfere with eclim:
" it provides a :Java command, AND calls out to new JVM instances for every
" request
"Bundle 'tpope/vim-classpath'

" clojure repl
Plugin 'tpope/vim-fireplace'
" syntax/color runtime files extracted from VimClojure
Plugin 'guns/vim-clojure-static'

" more in the spirit of vim than paredit
Plugin 'guns/vim-sexp'

" like YouCompleteMe, requires a manual 'make' in its plugin dir
Plugin 'Shougo/vimproc.vim'

" any repo in official vim-scripts github can automagically be used w/o username
Plugin 'EasyMotion'

Plugin 'unite.vim'

"Plugin 'paredit.vim'

" ggreer/the_silver_searcher
Plugin 'ag.vim'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'mattn/emmet-vim'

"Bundle 'groenewege/vim-less'

Plugin 'scrooloose/nerdcommenter'

Plugin 'troydm/easybuffer.vim'

"'instant-markdown.vim'

Plugin 'ConradIrwin/vim-bracketed-paste'

" experimental
" probably easier to do install.sh from its dir rather than let vundle do it
Plugin 'Valloric/YouCompleteMe'

Plugin 'sjl/gundo.vim'

Plugin 'SirVer/ultisnips'

Plugin 'bogado/file-line'

" required for MRU support in Unite
" (must load AFTER unite)
Plugin 'Shougo/neomru.vim'

" needs +cscope in vim
if has('cscope')
  Plugin 'autoload_cscope.vim'
endif

" recommended over official ocp-indent vim mappings
" requires python support
if has('python')
  Plugin 'def-lkb/ocp-indent-vim'
endif
