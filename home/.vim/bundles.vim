" should be source'd from .vimrc
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let vundle manage vundle
Bundle 'gmarik/vundle'

" original submodule'd bundles
Bundle 'airblade/vim-rooter'
Bundle 'scrooloose/syntastic'

Bundle 'vimwiki/vimwiki'
Bundle 'samsonw/vim-task'
" fork that combines both
"Bundle 'weierophinney/vimwiki'

Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-fugitive'

" meant for clojure def, but can be used by standard?
" however, it might interfere with eclim:
" it provides a :Java command, AND calls out to new JVM instances for every
" request
"Bundle 'tpope/vim-classpath'

" clojure repl
Bundle 'tpope/vim-fireplace'
" syntax/color runtime files extracted from VimClojure
Bundle 'guns/vim-clojure-static'

" any repo in official vim-scripts GH can automagically be used w/o username
Bundle 'EasyMotion'

Bundle 'paredit.vim'

" ggreer/the_silver_searcher
Bundle 'ag.vim'

Bundle 'kien/rainbow_parentheses.vim'

Bundle 'mattn/emmet-vim'

"Bundle 'groenewege/vim-less'

Bundle 'scrooloose/nerdcommenter'

Bundle 'troydm/easybuffer.vim'

"'instant-markdown.vim'

"Bundle 'editorconfig/editorconfig-vim'

" experimental
" probably easier to do install.sh from its dir rather than let vundle do it
Bundle 'Valloric/YouCompleteMe'

Bundle 'sjl/gundo.vim'

Bundle 'SirVer/ultisnips'

Bundle 'bogado/file-line'
" gsanders 
" Bundle 'cocoa'

" vim-css-color
" vim-css3-syntax
" vim-less
" vim-markdown
" vim-peepopen


" look-n-feel
" TODO just copy zenburn.vim to colors/
" Bundle 'jnurmine/Zenburn'
