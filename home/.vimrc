" Load Pathogen bundle-management 
filetype off
call pathogen#infect()
call pathogen#helptags()

" I think this is automatically set?
syntax on " syntax highlighting

filetype plugin indent on
" No need to conform to vi
set nocompatible

" Nobody really needs modelines, especially with security issue
set modelines=0

" Set tabstops globally instead of using after/ftplugin
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Sanity settings
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber " requires Vim 7.3!
" set undofile " requires Vim 7.3!

" Disable cursor blinking
set gcr=a:blinkon0

" Don't show these filetypes in wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class


" Change leader
let mapleader = ","

" Change default regex to use \v
nnoremap / /\v
vnoremap / /\v

" Use case-sensitive search if one-or-more uppercase chars
set ignorecase
set smartcase

" Apply substitutions globally on lines (i.e., always assume /foo/bar/g)
set gdefault

" Highlite search results incrementally
set incsearch
set showmatch
set hlsearch

" Clear out search results
nnoremap <leader><space> :noh<cr>

" Match bracket pairs with <tab>
nnoremap <tab> %
vnoremap <tab> %

" Line wrapping
" old:
" set nowrap
" set linebreak  " Wrap at word
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85 " visual warning if longer than 85 chars in line

" Show invisble characters like TextMate
set list
set listchars=tab:▸\ ,eol:¬

" FIXME: disabled; they don't work conditionally, and
" not sure if they're crashing MacVim :/
" Create a personal temp dir if it doesn't exist
"silent execute '!mkdir "'.$HOME.'/.vtemp"'
" Clean out old backups on each restart.
"silent execute '!rm "'.$HOME.'/.vtemp/*~"'
" Write undo/swap files to the personal temp dir
set backupdir=$HOME/.vtemp//
" Skip /tmp and /private since we usually need to edit-in-place
set backupskip=/tmp/*,/private/tmp/*
"set dir=$HOME/.vtemp//

" put swap files in $HOME/.vtemp/
set directory=~/.vtemp//,/tmp

" Make j/k move by screen line. 
" disabled for now, not sure if want
" nnoremap j gj
" nnoremap k gk

" Make ; do the same thing as :
nnoremap ; :

" Autosave on losing focus
au FocusLost * :wa

" Mappings
map <F2> :NERDTreeToggle<CR>
" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" use Ack
nnoremap <leader>a :Ack
" use jj to exit insert mode
inoremap jj <ESC>
" Window-splitting helpers
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" fold tags with ,ft
nnoremap <leader>ft Vatzf

" Reselect just-pasted text with ,v
nnoremap <leader>v V`]

" Open EasyBuffer with ,`
nnoremap <leader>` :EasyBuffer<CR>

