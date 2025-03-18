# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/eirik/.oh-my-bash'
OSH_THEME="powerline"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
OMB_USE_SUDO=true
completions=( git composer ssh )
aliases=( general )
plugins=( git bashmarks )
source "$OSH"/oh-my-bash.sh

alias git='/cygdrive/c/Program\ Files/Git/mingw64/bin/git.exe'
