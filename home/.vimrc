" No need to conform to vi
set nocompatible

" Must deactivate filetype when loading bundle-mgmt
" (the extra 'on' is to prevent errors in stock OSX vim)
filetype on
filetype off

" Load vundle bundle-management
source ~/.vim/bundles.vim

" Reactivate filetypes after bundle mgmt.
filetype plugin indent on

" I think this is automatically set?
syntax on " syntax highlighting

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
set number " requires Vim 7.4!

set shell=bash

" Disable cursor blinking
set gcr=a:blinkon0

" Don't show these filetypes in wildmenu
set wildignore=*.dll,*.o,*.pyc,*.bak,*.exe,*.jpg,*.jpeg,*.png,*.gif,*$py.class,*.class

" Use case-sensitive search if one-or-more uppercase chars
set ignorecase
set smartcase

" Apply substitutions globally on lines (i.e., always assume /foo/bar/g)
set gdefault

" Highlite search results incrementally
set incsearch
set showmatch
set hlsearch

" Line wrapping
" old:
" set nowrap
" set linebreak  " Wrap at word
set wrap
" Not force-wrapping text for now, as it's a pain to balance it in wiki pages
"set textwidth=79

" Allow 'gq', automatically insert comment leader in Insert, recognize list numbers
set formatoptions=qrn1
set colorcolumn=120 " visual warning if longer than 120 chars in line

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
" Skip /tmp and /private since changing anything there needs edit-in-place
set backupskip=/tmp/*,/private/tmp/*
"set dir=$HOME/.vtemp//

" put swap files in $HOME/.vtemp/
set directory=~/.vtemp//,/tmp

" tpope/vim-fugitive must be installed!
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" key mappings
" Change leader
let mapleader = "\<Space>"

" Change default regex to use \v
nnoremap / /\v
vnoremap / /\v

" Clear out search results with ,<space>
"nnoremap <leader><space> :noh<cr>
nnoremap <leader>, :noh<cr>

" Match bracket pairs with <tab>
nnoremap <tab> %
vnoremap <tab> %

"TODO is there a way to autoload these on file-types?
":RainbowParenthesesToggle       " Toggle it on/off
":RainbowParenthesesLoadRound    " (), the default when toggling
":RainbowParenthesesLoadSquare   " []
":RainbowParenthesesLoadBraces   " {}
":RainbowParenthesesLoadChevrons " <>
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
nnoremap <leader>R :RainbowParenthesesToggle<CR>

" Make j/k move by screen line. 
" disabled for now, not sure if want
" nnoremap j gj
" nnoremap k gk

" Make ; do the same thing as :
nnoremap ; :

" Autosave on losing focus
au FocusLost * :wa

" Mappings
" strip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" use jj to exit insert mode
inoremap jj <ESC>
" Window-splitting helpers
" Split vertically with <leader>w
nnoremap <leader>w <C-w>v<C-w>l
" Split horizontally with <leader>v
nnoremap <leader>v <C-w>s<C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" force detection of *.md to Markdown, not modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" fold tags with ,ft
"nnoremap <leader>ft Vatzf

" Reselect just-pasted text with ,v
"nnoremap <leader>v V`]

" Rooter options
" (cd is default mapping, dup'd here for explicitness)
map <silent> <unique> <Leader>cd <Plug>RooterChangeToRootDirectory
" TODO move these to after/plugin/vim-router.vim
"autocmd rooter BufEnter *.java :Rooter
"autocmd rooter BufEnter *.clj :Rooter
" FIXME EVERY time you enter(as in, switch to a pane/window/tab), rooter will be toggled
let g:rooter_manual_only = 1

" use Ag -- the_silver_searcher
nnoremap <leader>a :Ag<space>

" Open EasyBuffer with ,`
nnoremap <leader>` :EasyBuffer<CR>

" gundo mappings
nnoremap <F5> :GundoToggle<CR>

" vim-task mappings
"inoremap <silent> <buffer> <C-D-CR> <ESC>:call Toggle_task_status()<CR>i
"noremap <silent> <buffer> <C-D-CR> :call Toggle_task_status()<CR>
"inoremap <silent> <buffer> <leader>m <ESC>:call Toggle_task_status()<CR>i
"nnoremap <silent> <leader>m <ESC>:call Toggle_task_status()<CR>
":call Toggle_task_status()

" vimwiki mappings
nnoremap <silent> <leader>) :VimwikiListChangeLevel <<<CR>
nnoremap <silent> <leader>( :VimwikiListChangeLevel >><CR>

nnoremap <silent> <leader>m :VimwikiToggleListItem<CR>
vnoremap <silent> <leader>m :VimwikiToggleListItem<CR>

" Eclim settings
" FIXME should only trigger if eclim is installed
" http://writequit.org/blog/?p=279
" ,ji imports whatever is needed for current line
nnoremap <silent> <leader>ji :JavaImport<cr>
" ,jd opens javadoc for statement in browser
nnoremap <silent> <leader>jd :JavaDocSearch -x declarations<cr>
" ,<enter> searches context for statement
"nnoremap <silent> <leader><cr> :JavaSearchContext<cr>
" ,jv validates current java file
"nnoremap <silent> <leader>jv :Validate<cr>
" ,jc shows corrections for the current line of java
"nnoremap <silent> <leader>jc :JavaCorrect<cr>

if exists("g:EclimBrowser") && has("gui_macvim")
  "'open' on OSX will open the url in the default browser without issue
  let g:EclimBrowser='open'
  "don't put TODO/FIXME in task list 
  "http://stackoverflow.com/questions/18618985/how-do-i-make-todos-not-show-up-as-errors-in-eclim
  let g:EclimSignLevel=2
end

" let eclim and YCM play nice together
if exists("g:EclimCompletionMethod") && has("gui_macvim")
  let g:EclimCompletionMethod = 'omnifunc'
end

" YCM settings

" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" #1
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsListSnippets="<c-s-tab>"

" #2
function! g:UltiSnips_Complete()
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips#JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" Automatically recover+delete swap files if reopening after a crash
augroup AutomaticSwapRecoveryAndDelete
    autocmd!
    autocmd SwapExists * :let v:swapchoice = 'r' | let b:swapname = v:swapname
    autocmd BufWinEnter * :if exists("b:swapname") | call delete(b:swapname) | unlet b:swapname | endif
augroup end

" cscope
" adapted from http://cscope.sourceforge.net/cscope_maps.vim
" http://stackoverflow.com/questions/934233/cscope-or-ctags-why-choose-one-over-the-other
if has('cscope')

  " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
  " show msg when any other cscope db added
  set cscopetag cscopeverbose

  " check cscope for definition of a symbol before checking ctags: set to 1
  " if you want the reverse search order.
  set csto=0

  " add any cscope database in current directory
  " FIXME might not be needed since we have the autoload_cscope.vim bundle?
  " http://stackoverflow.com/questions/13936480/use-the-current-directory-in-vim-commands
  if filereadable(fnamemodify("cscope.out", ':p:h:t'))
    cs add fnamemodify(findfile("cscope.out"), ':p:h:t')
   "else add the database pointed to by environment variable
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif

  " from vim wikia ?
  "if has('quickfix')
    "set cscopequickfix=s-,c-,d-,i-,t-,e-
  "endif

  " 's'   symbol: find all references to the token under cursor
  " 'g'   global: find global definition(s) of the token under cursor
  " 'c'   calls:  find all calls to the function name under cursor
  " 't'   text:   find all instances of the text under cursor
  " 'e'   egrep:  egrep search for the word under cursor
  " 'f'   file:   open the filename under cursor
  " 'i'   includes: find files that include the filename under cursor
  " 'd'   called: find functions that function under cursor calls

  nmap <Leader>cfs :cs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>cfg :cs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>cfc :cs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>cft :cs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>cfe :cs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>cff :cs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <Leader>cfi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <Leader>cfd :cs find d <C-R>=expand("<cword>")<CR><CR>

  nmap <Leader>vfs :scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>vfg :scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>vfc :scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>vft :scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>vfe :scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>vff :scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <Leader>vfi :scs find i <C-R>=expand("<cfile>")<CR>$<CR>
  nmap <Leader>vfd :scs find d <C-R>=expand("<cword>")<CR><CR>

  nmap <Leader>wfs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>wfg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>wfc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>wft :vert scs find t <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>wfe :vert scs find e <C-R>=expand("<cword>")<CR><CR>
  nmap <Leader>wff :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
  nmap <Leader>wfi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
  nmap <Leader>wfd :vert scs find d <C-R>=expand("<cword>")<CR><CR>

  "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif
" end cscope
