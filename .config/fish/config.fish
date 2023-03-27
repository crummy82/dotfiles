if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting           # Supresses fish's intro message
set TERM "xterm-256color"   # Sets the terminal type

# Replace ls with exa
alias ls='exa -laF --group-directories-first --color=always'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -al'
alias lla='ls -la'
alias lt='ls --tree'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# adding flags
alias df='df -h'      # human-readable sizes
alias free='free -m'  # show sizes in MB
