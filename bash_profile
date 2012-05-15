# ~/.bash_profile: executed by bash(1) for login shells.

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# UTF-8
export LANG=en_US.UTF-8
export LOCALE=UTF-8
export LESSCHARSET='utf-8'
