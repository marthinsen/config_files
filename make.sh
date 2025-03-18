#! /bin/bash

files=(
  bashrc
  gitconfig
  vimrc
  vim
  colordiffrc
  )

for file in "${files[@]}"; do
  # Unlink or backup old files
  if [ -L ~/.$file ] ; then
    unlink ~/.$file
  elif [ -f ~/.$file ] ; then
    mv ~/.$file ~/.$file.bak
  fi

  # Link new files
  if [ $(uname -o) == "Cygwin" -a "$file" == "gitconfig" ] ; then
    # Windows Git on Cygwin does not understand symbolic links
    cp    $( cd "$( dirname "$0" )" && pwd )/$file ~/.$file
  else
    ln -s $( cd "$( dirname "$0" )" && pwd )/$file ~/.$file
  fi
done
