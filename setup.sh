#!/bin/bash
gitdir=$( realpath $( dirname ${BASH_SOURCE[0]} ) ) 
echo $gitdir/

read -p "This script will overwrite your current .vimrc, i3config and .bash_profile file. Are you sure you want to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# create symbolic links
mkdir -p ~/.config/i3
ln -fs ${gitdir}/{.bash_profile,.vimrc} ~/
ln -fs $gitdir/i3-config ~/.config/i3/config

touch -f ~/.bashrc
echo "source ~/.bash_profile" >> ~/.bashrc

# install vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
