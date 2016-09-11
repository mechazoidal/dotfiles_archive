xset +fp /usr/local/share/fonts/ghostscript/
xset +fp /usr/local/share/fonts/Droid/
xset +fp /usr/local/share/fonts/terminus/
xset +fp /usr/local/share/fonts/Inconsolata/
xset fp rehash

xrdb -merge $HOME/.Xdefaults

setxkbmap -option ctrl:swapcaps

xscreensaver &

dstat iwm0 &

exec dwm
