#!/bin/bash
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u bundles.vim +BundleInstall +q
