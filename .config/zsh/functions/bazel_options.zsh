#!/bin/zsh
function bazel_options()
{
    local cmd="cat $HOME/.config/zsh/functions/bazel_options"
    local item
    eval "$cmd" | FZF_DEFAULT_OPTS="--height ${FZF_TMUX_HEIGHT:-40%} --reverse --bind=ctrl-z:ignore $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS" $(__fzfcmd) -m "$@" | while read item; do
        echo -n "${(q)item} "
    done
    local ret=$?
    echo
    return $ret
}

fzf-bazel-options-widget()
{
  LBUFFER="${LBUFFER}$(bazel_options)"
  local ret=$?
  zle reset-prompt
  return $ret
}

zle -N fzf-bazel-options-widget
bindkey '^o' fzf-bazel-options-widget
