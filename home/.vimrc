set nocompatible

" Cursor highlights ***********************************************************
set cursorline
"set cursorcolumn

" Searching *******************************************************************
set hlsearch  " highlight search
set incsearch  " incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase " Ignore case when searching lowercase

" Colors **********************************************************************
"set t_Co=256 " 256 colors
set background=dark 
syntax on " syntax highlighting
colorscheme ir_black


" Status Line *****************************************************************
set showcmd
set ruler " Show ruler
"set ch=2 " Make command line two lines high
" doesn't seem to work in win32?
" match LongLineWarning '\%120v.*' " Error format when a line is longer than 120


" Line Wrapping ***************************************************************
set nowrap
set linebreak  " Wrap at word


" Directories *****************************************************************
" Setup backup location and enable
" -not sure if this works in win32, or if I need to make the dirs?
" set backupdir=~/backup/vim
" set backup

" Language-specific ----
"ruby
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"scons
"autocmd BufReadPre SConstruct set filetype=python
"autocmd BufReadPre SConscript set filetype=python
"

"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold
"colorscheme desert256
"syntax enable

"autodetect scons
"au BufNewFile,BufRead SConstruct,SConscript set filetype=python

set anti " Antialias font
filetype plugin indent on


" QuickKeys *****************************************************************
map <F2> :NERDTreeToggle<CR>