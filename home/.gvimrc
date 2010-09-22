" OS specific ----
if has("gui_macvim")
  set guioptions-=T " remove toolbar
  set guifont=Monaco:h13
  set stal=2 " turn on tabs by default
  set bg=dark
  if &background == "dark"
    highlight normal guibg=black
    set transparency=8
  endif
elseif has("gui_gtk2")
  set guifont=Monaco
  set guioptions-=T " remove toolbar
  colorscheme ir_black
elseif has("gui_win32")
  set guioptions-=T " remove toolbar
  set stal=2 " turn on tabs by default
  set guifont=Lucida_Console:h12  
  colorscheme ir_black
end

" General settings ----

" anti-aliased fonts where possible
set anti 

" Tab headings (evaluate these to see if I like them?)
set gtl=%t gtt=%F

" OBSOLETE settings
"set t_Co=256 " 256 colors
" set background=dark 
" colorscheme ir_black

"improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold
"colorscheme desert256
"syntax enable
