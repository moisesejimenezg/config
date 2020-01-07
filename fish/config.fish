# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

source $HOME/.config/base16-shell/profile_helper.fish

set -g theme_color_scheme zenburn

# ros
bass source /opt/ros/kinetic/setup.bash
source /opt/ros/kinetic/share/rosbash/rosfish

# Environment variables
set -gx PATH /usr/lib/ccache $PATH
set -gx ROS_IP localhost
set -gx ROS_HOSTNAME localhost
set -gx ROS_MASTER_URI http://$ROS_IP:11311

alias hub=hub
