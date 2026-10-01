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

# Link oh-my-bash custom scripts (oh-my-bash sources every *.sh in its custom folder)
for file in wsl.sh; do
  ln -sfn $( cd "$( dirname "$0" )" && pwd )/$file ~/.oh-my-bash/custom/$file
done

# WSL only: open folders in Windows Explorer instead of requiring a Linux file manager
if [ -n "$WSL_DISTRO_NAME" ]; then
  mkdir -p ~/.local/bin ~/.local/share/applications
  ln -sfn $( cd "$( dirname "$0" )" && pwd )/wsl/open-in-explorer ~/.local/bin/open-in-explorer
  # Desktop entries do not expand ~ or $HOME, so write the absolute path here
  cat > ~/.local/share/applications/explorer.desktop <<DESKTOP
[Desktop Entry]
Type=Application
Name=Windows Explorer
Exec=$HOME/.local/bin/open-in-explorer %f
MimeType=inode/directory;
NoDisplay=true
DESKTOP
  xdg-mime default explorer.desktop inode/directory
fi
