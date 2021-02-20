if status is-interactive
and not set -q TMUX
    exec tmux
end

# git abbreviations
abbr gau git add -u
abbr gaup git add -up
abbr gbd git branch -d
abbr gbD git branch -D
abbr gcm git commit -S -m
abbr gcam git commit --amend
abbr gcob git checkout -b
abbr gds git diff --stat
abbr gpl git pull
abbr gstap git stash pop
abbr gstal git stash list
abbr gstad git stash drop

# utility abbreviations
# search
abbr fft fish_find_text

alias cat=bat

# theme
set -g theme_color_scheme dracula

set -x FZF_DEFAULT_COMMAND 'rg --files'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -x FZF_CTRL_T_OPTS '--preview \'cat {}\''
set -x FZF_ALT_C_COMMAND 'rg --files --null | xargs -0 dirname | uniq'

set -x XDG_CONFIG_HOME '/home/mjimenez/.config'
