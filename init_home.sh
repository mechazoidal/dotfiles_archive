#!/usr/env sh
STOW=$(which stow)
$STOW -d $dotfile_repo -t $HOME --no-folding -R dotfiles
