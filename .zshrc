# Lines configured by zsh-newuser-install
HISTFILE=~/.zshhistfile
HISTSIZE=10000
SAVEHIST=20000
setopt notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# My Stuff
alias vim='nvim'
alias zshconfig='vim ~/.zshrc'
alias python='/home/linuxbrew/.linuxbrew/bin/python3'
alias py='/home/linuxbrew/.linuxbrew/bin/python3'

# Replace ls with exa
alias ls='exa -laF --group-directories-first --color=always'
alias l='ls'
alias ll='ls -l'
alias la='ls -al'
alias lla='ls -la'
alias lt='ls --tree'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'

# Start tmux on launch
if [ -z "$TMUX" ]
then
    tmux attach -t session1 || tmux new -s session1
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Load starship prompt config
eval "$(starship init zsh)
