#!/bin/bash

set -e
########## Variables

dir=$(pwd)                   # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files=".gdbinit .bashrc .vimrc .bash_profile .bash_herman .bash_cerebras .git-completion.bash .git-prompt.sh"        # list of files/folders to symlink in homedir

##########

# if [ ! -d ~/.vim/bundle/Vundle.vim ]
# then
#     echo "Cloning Vundle"
#     git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# fi

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    echo $file
    if [ -f ~/$file ]
    then
	    mv ~/$file ~/dotfiles_old/
    fi
    echo "Creating symlink to $file in home directory."
    echo "ln -s $dir/$file ~/$file"
    ln -s $dir/$file ~/$file
    echo "...done"
done

./vimsetup.sh
source ~/.bashrc
