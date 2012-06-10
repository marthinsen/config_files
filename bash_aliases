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

# Listings
alias ls='ls -hF --color'                     # add color for filetype recognition
alias ll='ls -lh --group-directories-first'   # 
alias la='ls -lhA'                            # show hidden files
alias lx='ls -lhXB'                           # sort by extension
alias lk='ls -lhSr'                           # sort by size
alias lc='ls -lhtcr'                          # sort by and show change time, most recent last
alias lu='ls -lhtur'                          # sort by and show access time, most recent last