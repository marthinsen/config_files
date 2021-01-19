# ~/.bashrc: executed by bash(1) for interactive shells.
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

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

# Make sure file permissions after git push is preserved
umask 000

# Bash history
export HISTSIZE=10000
export HISTFILESIZE=10000

# Cygwin specific
if [ $(uname -o) == "Cygwin" ]; then
  export BROWSER=cygstart
fi

export LANG='en_US.UTF-8'
