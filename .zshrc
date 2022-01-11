# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Language setting
export LANG=en_US.UTF-8

# My aliases
alias zshconfig="vim ~/.zshrc"
alias c="clear"
alias chrome='open -a "Google Chrome"'
# Mac alias for finder
# alias finder='open -a "Finder"'
alias ls='exa -laF --group-directories-first --color=always'
alias l='ls -l'
alias ll='ls -l'
alias la='ls -al'
alias lla='ls -la'
alias lt='ls --tree'
alias python3='/usr/local/bin/python3'

# Start neofetch on terminal start
# neofetch

# PATH for python on Mac
# export PATH="/Users/brad/Library/Python/3.9/lib/python/site-packages:$PATH"

# Powerlevel10k theming
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
