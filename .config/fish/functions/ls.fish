# Replace default ls command with better exa display
function ls
    exa --long --all --classify --icons --group-directories-first --color=always $argv
end
