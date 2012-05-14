# ~/.bash_profile: executed by bash(1) for login shells.

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

if [[ $OSTYPE == 'linux-gnu' ]]; then
  export TERM=xterm-256color

  # ==== alias for colors ========
  BLACK="\[$(tput setaf 0)\]"
  BLUE="\[$(tput setaf 4)\]"
  GREEN="\[$(tput setaf 2)\]"
  CYAN="\[$(tput setaf 6)\]"
  RED="\[$(tput setaf 1)\]"
  MAGENTA="\[$(tput setaf 5)\]"
  YELLOW="\[$(tput setaf 3)\]"
  WHITE="\[$(tput setaf 7)\]"

  RETURN="\[$(tput sgr0)\]"
  BOLD="\[$(tput bold)\]"
  REV="\[$(tput rev)\]"

  export PS1="$BLUE$BOLD\u@\h$WHITE:$YELLOW\w$RED\$$RETURN "
fi

  LS_COLORS='di=1;34:fi=0:ln=94:ex=32'
  export LS_COLORS

  export EDITOR=/usr/bin/vim

# Add $HOME/bin/ to path
if [[ -d "$HOME/bin" ]];  then
  PATH="$HOME/bin:$PATH"
fi

