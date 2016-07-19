" OS specific ----
if has("gui_macvim")
  " Ask OSX if we have more vertical screen-space than the built-in display (ie, monitor is connected
  if system("osascript -e 'tell application \"Finder\" to get bounds of window of desktop' | cut -d ' ' -f 4") > 900
    set guifont=Inconsolata-dz:h17
  else
    set guifont=Inconsolata-dz:h14
  endif
  set guioptions-=T " remove toolbar
  "set guifont=Inconsolata-g:h14
  "set guifont=Inconsolata-g:h18
  "set guifont=Inconsolata-dz:h18
  colorscheme zenburn
  set transparency=4
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

