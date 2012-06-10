#! /bin/bash

echo "Moving old config files"

mv ~/.gitconfig ~/.gitconfig.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.bash_profile ~/.bash_profile.bak
mv ~/.bash_aliases ~/.bash_aliases.bak
mv ~/.bash_functions ~/.bash_functions.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.screenrc ~/.screenrc.bak
if [ -L ~/.vim.bak ] ; then
  rm ~/.vim.bak
  mv ~/.vim ~/.vim.bak
fi
if [ -L ~/bin.bak ] ; then
  rm ~/bin.bak
  mv ~/bin ~/bin.bak
fi

echo "Creating symlinks to new ones"

ln -s $( cd "$( dirname "$0" )" && pwd )/gitconfig ~/.gitconfig
ln -s $( cd "$( dirname "$0" )" && pwd )/bashrc ~/.bashrc
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_profile ~/.bash_profile
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_aliases ~/.bash_aliases
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_functions ~/.bash_functions
ln -s $( cd "$( dirname "$0" )" && pwd )/vimrc ~/.vimrc
ln -s $( cd "$( dirname "$0" )" && pwd )/vim ~/.vim
ln -s $( cd "$( dirname "$0" )" && pwd )/bin ~/bin
ln -s $( cd "$( dirname "$0" )" && pwd )/screenrc ~/.screenrc
