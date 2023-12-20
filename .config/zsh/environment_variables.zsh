# config files
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

# Options

# fd
export FD_OPTIONS="--follow --exclude .git"

# fzf
export GIT_LS_COMMAND="git ls-files cached --others --exclude-standard"
export FZF_DEFAULT_COMMAND="$GIT_LS_COMMAND | fd --type f --type l $FD_OPTIONS"

export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
export FZF_DEFAULT_OPTS="--reverse --preview 'batcat --color=always {}'"
