#!/bin/bash

set -e
rm -rf ~/.vim
mkdir -p .vim
sudo ln -s $(pwd)/.vim ~/
mkdir -p .vim/autoload .vim/bundle
rm -rf  .vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
vim +PluginInstall +qall

