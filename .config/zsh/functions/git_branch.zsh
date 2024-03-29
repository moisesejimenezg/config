#!/bin/zsh
function git_branch()
{
    local cmd="git branch"
    local item
    eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "${(q)item} "
    done
    local ret=$?
    echo
    return $ret
}

fzf-git-branch-widget()
{
  LBUFFER="${LBUFFER}$(git_branch)"
  local ret=$?
  zle reset-prompt
  return $ret
}
zle -N fzf-git-branch-widget
bindkey '^b' fzf-git-branch-widget
