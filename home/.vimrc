" Load Pathogen bundle-management 
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on
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
set undofile " requires Vim 7.3!

" I think this is automatically set?
syntax on " syntax highlighting

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

" Clear out search results with a simple macro
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

" OBSOLETE settings
"set t_Co=256 " 256 colors
" set background=dark 
" colorscheme ir_black

"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold
"colorscheme desert256
"syntax enable

