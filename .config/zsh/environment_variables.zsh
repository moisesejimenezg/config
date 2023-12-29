# config files
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Options

# fd
export FD_OPTIONS="--follow --exclude .git"

# fzf
export GIT_LS_CMD="git ls-files cached --others --exclude-standard"
export CLIPBOARD_CMD="xclip -i -sel clip"
export FZF_DEFAULT_COMMAND="$GIT_LS_CMD | fd --type f --type l $FD_OPTIONS"

export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"

export FZF_BINDINGS="f3:execute(batcat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(batcat {+} | $CLIPBOARD_CMD),alt-y:execute-silent(echo {} | $CLIPBOARD_CMD)"
export FZF_DEFAULT_OPTS="--no-mouse \
                         --height 50% -1 \
                         --reverse \
                         --multi \
                         --inline-info \
                         --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (batcat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' \
                         --preview-window='right:hidden:wrap' \
                         --bind='$FZF_BINDINGS'"
