" this file should be source'd from .vimrc

" Merlin authors discourage installing through vundle, so install through OPAM first
"https://github.com/realworldocaml/book/wiki/Installation-Instructions
if executable('ocamlmerlin') && has('python')
  let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/ocamlmerlin"
  execute "set rtp+=".s:ocamlmerlin."/vim"
  execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
endif

if executable('ocp-indent')
  let g:ocp_indent_vimfile = system("opam config var share")
  let g:ocp_indent_vimfile = substitute(g:ocp_indent_vimfile, '[\r\n]*$', '', '')
  let g:ocp_indent_vimfile = g:ocp_indent_vimfile . "/vim/syntax/ocp-indent.vim"
endif

autocmd FileType ocaml exec ":source " . g:ocp_indent_vimfile


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

" any repo in official vim-scripts GH can automagically be used w/o username
Plugin 'EasyMotion'

Plugin 'paredit.vim'

" ggreer/the_silver_searcher
Plugin 'ag.vim'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'mattn/emmet-vim'

"Bundle 'groenewege/vim-less'

Plugin 'scrooloose/nerdcommenter'

Plugin 'troydm/easybuffer.vim'

"'instant-markdown.vim'

" experimental
" probably easier to do install.sh from its dir rather than let vundle do it
Plugin 'Valloric/YouCompleteMe'

Plugin 'sjl/gundo.vim'

Plugin 'SirVer/ultisnips'

Plugin 'bogado/file-line'
" gsanders 
" Bundle 'cocoa'

" vim-css-color
" vim-css3-syntax
" vim-less
" vim-markdown
" vim-peepopen

" needs +cscope in vim
"Bundle 'autoload_cscope.vim'
