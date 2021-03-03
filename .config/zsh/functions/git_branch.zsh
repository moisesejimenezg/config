#!/bin/zsh
function gitbranch()
{
    git branch | fzf --height 40% --layout=reverse --border | tr -d '[:space:]'
}
zle -N gitbranch
bindkey '^b' gitbranch
