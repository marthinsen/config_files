# ~/.bashrc: executed by bash(1) for interactive shells.

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Shell Options
#
# Use case-insensitive filename globbing
shopt -s nocaseglob

# Make bash append rather than overwrite the history on disk
shopt -s histappend

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
  . /etc/bash_completion
fi

# History Options
#
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  source "${HOME}/.bash_aliases"
fi

# Functions
if [ -f "${HOME}/.bash_functions" ]; then
  source "${HOME}/.bash_functions"
fi

# Add $HOME/bin/ to path
if [[ -d "$HOME/bin" ]]; then
  PATH="$HOME/bin:$PATH"
fi

export EDITOR=vim               # Set vim to default editor
export LESS='-R'                # Correct escape characters 
export TERM=xterm-256color      # Get 256 colors in vim (?)
[ -n "$TMUX" ] && export TERM=screen-256color

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

export PS1="$BLUE$BOLD\u$RED@$BLUE\h$RED:$YELLOW\W$RED\$ $RETURN"

# color output of ls command
LS_COLORS="di=01;35" 
export LS_COLORS

# Make sure file permissions after git push is preserved
umask 000

# Bash history
export HISTSIZE=10000
export HISTFILESIZE=10000

# Cygwin specific
if [ $(uname -o) == "Cygwin" ]; then
  export BROWSER=cygstart
fi
