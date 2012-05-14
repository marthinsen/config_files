# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.1-2

# ~/.bash_profile: executed by bash(1) for login shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bash_profile

# Modifying /etc/skel/.bash_profile directly will prevent
# setup from updating it.

# The copy in your home directory (~/.bash_profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benifitial to all, please feel free to send
# a patch to the cygwin mailing list.

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
# if [ -d "${HOME}/bin" ] ; then
#   PATH="${HOME}/bin:${PATH}"
# fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

#################
# Eirik's stuff #
#################

# Include what's in .bashrc as well 
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi



# Bash_profile for Eirik Marthinsen
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

  alias ls='ls --color'
  LS_COLORS='di=1;34:fi=0:ln=94:ex=32'
  export LS_COLORS

  alias grep='grep --color'

  export EDITOR=/usr/bin/vim

# Add $HOME/bin/ to path
if [[ -d "$HOME/bin" ]];  then
  PATH="$HOME/bin:$PATH"
fi

