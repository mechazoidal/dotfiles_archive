" OS specific ----
if has("gui_macvim")
  " Ask OSX if we have more vertical screen-space than the built-in display (ie, monitor is connected
  if system("osascript -e 'tell application \"Finder\" to get bounds of window of desktop' | cut -d ' ' -f 4") > 900
    set guifont=Inconsolata-dz:h17
    "set guifont=Inconsolata-dz:h18
  else
    set guifont=Inconsolata-dz:h14
  endif
  set guioptions-=T " remove toolbar
  colorscheme zenburn
  set transparency=4
elseif has("gui_gtk2")
  set guifont=Inconsolata\ Medium\ 15
  set guioptions-=m " remove menu
elseif has("gui_win32")
  set guifont=Lucida_Console:h12
  "set guioptions-=T " remove toolbar
end

" General settings ----
" remove toolbar
set guioptions-=T
colorscheme zenburn
" anti-aliased fonts where possible
set anti 

