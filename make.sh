#! /bin/bash

# I wasn't able to get powerline-status to work on Cygwin/bash
# so I used powerline-shell instead.
python -m pip install -U powerline-shell powerline-status

files=(
  gitconfig
  bashrc
  bash_profile
  bash_aliases
  bash_functions
  vimrc
  vim
  ctags
  tmux.conf
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
