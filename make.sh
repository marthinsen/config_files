#! /bin/bash

echo "Moving old config files"

if [ -f ~/.gitconfig ] ; then
  mv ~/.gitconfig ~/.gitconfig.bak
fi
if [ -f ~/.bashrc ] ; then
  mv ~/.bashrc ~/.bashrc.bak
fi
if [ -f ~/.bash_profile ] ; then
  mv ~/.bash_profile ~/.bash_profile.bak
fi
if [ -f ~/.bash_aliases ] ; then
  mv ~/.bash_aliases ~/.bash_aliases.bak
fi
if [ -f ~/.bash_functions ] ; then
  mv ~/.bash_functions ~/.bash_functions.bak
fi
if [ -f ~/.vimrc ] ; then
  mv ~/.vimrc ~/.vimrc.bak
fi
if [ -d ~/.vim ] ; then
  mv ~/.vim ~/.vim.bak
fi
if [ -f ~/.screenrc ] ; then
  mv ~/.screenrc ~/.screenrc.bak
fi
if [ -d ~/.irssi ] ; then
  mv ~/.irssi ~/.irssi.bak
fi
if [ -f ~/.ctags ] ; then
  mv ~/.ctags ~/.ctags.bak
fi
if [ -f ~/.tmux.conf ] ; then
  mv ~/.tmux.conf ~/.tmux.conf.bak
fi
if [ -f ~/.colordiffrc ] ; then
  mv ~/.colordiffrc ~/.colordiffrc.bak
fi

echo "Creating symlinks to new ones"

ln -s $( cd "$( dirname "$0" )" && pwd )/gitconfig ~/.gitconfig
ln -s $( cd "$( dirname "$0" )" && pwd )/bashrc ~/.bashrc
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_profile ~/.bash_profile
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_aliases ~/.bash_aliases
ln -s $( cd "$( dirname "$0" )" && pwd )/bash_functions ~/.bash_functions
ln -s $( cd "$( dirname "$0" )" && pwd )/vimrc ~/.vimrc
ln -s $( cd "$( dirname "$0" )" && pwd )/vim ~/.vim
ln -s $( cd "$( dirname "$0" )" && pwd )/screenrc ~/.screenrc
ln -s $( cd "$( dirname "$0" )" && pwd )/irssi ~/.irssi
ln -s $( cd "$( dirname "$0" )" && pwd )/ctags ~/.ctags
ln -s $( cd "$( dirname "$0" )" && pwd )/tmux.conf ~/.tmux.conf
ln -s $( cd "$( dirname "$0" )" && pwd )/colordiffrc ~/.colordiffrc
