# Interactive operation...
alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour
alias diff='colordiff'                        # Use colordiff as default diff tool

# Listings
alias ls='ls -hF --color'                     # add color for filetype recognition
alias ll='ls -lh --group-directories-first'   #
alias la='ls -lhA'                            # show hidden files
alias lx='ls -lhXB'                           # sort by extension
alias lk='ls -lhSr'                           # sort by size
alias lc='ls -lhtcr'                          # sort by and show change time, most recent last
alias lu='ls -lhtur'                          # sort by and show access time, most recent last

# Directories
alias brlf='cd /cygdrive/d/brilliant/'
alias globf='cd /cygdrive/s/Brilliant/Eirik/'
alias netf='cd /cygdrive/z/eirik/'

#cygwin
if [ $(uname -o) == "Cygwin" ]; then
  alias start='cygstart'
  alias git='/cygdrive/c/Program\ Files/Git/mingw64/bin/git.exe'
fi

alias brg='brl %noconnect && start GeoFile.brf'

zip_version_function() {
  zip "$(basename $1)_$(git rev-parse --short HEAD).zip" -r $1
}
alias zipversion=zip_version_function

pybrf_function() {
  /cygdrive/d/scripts/pybrf/pybrf.py $@
}
alias pybrf=pybrf_function
