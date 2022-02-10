#!/bin/bash
gitdir=$( dirname ${BASH_SOURCE[0]} ) 
echo $gitdir/

read -p "This script will overwrite your current .vimrc, i3config and bashrc file. Are you sure you want to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

# create symbolic links
mkdir -p ~/tes/.config/i3 ~/tes
ln -fs ${gitdir}/{.bash_profile,.vimrc} ~/tes
ln -fs $gitdir/.i3config ~/tes/.config/i3/config

# install vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
