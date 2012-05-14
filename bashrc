# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Aliases
#
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

export PS1="\[$(tput setaf 2)\]\u\[$(tput setaf 3)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]:\[$(tput setaf 6)\]\w \[$(tput setaf 7)\]$ \[$(tput sgr0)\]"

export EDITOR=vim

if [[ $OSTYPE == 'cygwin' ]]; then
  echo "You are running cygwin\n"
elif [[ $OSTYPE == 'linux-gnu' ]]; then
  echo "You are running linux-gnu\n"
else 
  echo "Your OS-type is not recognized\n"
fi
