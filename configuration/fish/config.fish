# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

#source $HOME/.config/base16-shell/profile_helper.fish

#set -g theme_color_scheme zenburn

if status is-interactive
and not set -q TMUX
    exec tmux
end
