#!/usr/bin/env sh
STOW=$(which stow)
GIT=$(which git)

#dotfile_repo=$HOME/workspace/dotfiles

# readlink -f might not work on OSX
source_repo=$(readlink -f $1)
#echo $source_repo

cd $source_repo && $GIT submodule update --remote
$STOW -d $source_repo/vim -t $HOME/.vim/bundle --no-folding -R bundle
