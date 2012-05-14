#! /bin/bash

echo "Moving old config files"

mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.bash_profile ~/.bash_profile.bak
mv ~/.bash_aliases ~/.bash_aliases.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.vim ~/.vim.bak
mv ~/bin ~/bin.bak

echo "Creating symlinks to new ones"

ln -s $( cd "$( dirname "$0" )" && pwd )/gitconfig ~/.gitconfig
ln -s $( cd "$( dirname "$0" )" && pwd )/bashrc ~/.bashrc
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_profile ~/.bash_profile
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_aliases ~/.bash_aliases
ln -s $( cd "$( dirname "$0" )" && pwd )/vimrc ~/.vimrc
ln -s $( cd "$( dirname "$0" )" && pwd )/vim ~/.vim
ln -s $( cd "$( dirname "$0" )" && pwd )/bin ~/bin
