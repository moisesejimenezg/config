# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

#set -g theme_color_scheme zenburn

if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

# bmwrpp
if test -e /etc/bmwrpp-bootstrap/zshrc
  bass source /etc/bmwrpp-bootstrap/bashrc
else
  echo "bmwrpp-bootstrap not installed, please remove BMWRPP section from /home/jimenez/.zshrc"
end

# ros
bass source /opt/ros/melodic/setup.bash
source /opt/ros/melodic/share/rosbash/rosfish

# Environment variables
set -gx PATH /usr/lib/ccache $PATH
set -gx ROS_IP localhost
set -gx ROS_HOSTNAME localhost
set -gx ROS_MASTER_URI http://$ROS_IP:11311
set -gx FZF_DEFAULT_COMMAND 'rg --color=auto --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!bazel-*/*"'
set -gx RIPGREP_CONFIG_PATH ~/.ripgreprc

# Add GO to PATH
set -x -U GOPATH $HOME/go
set -gx PATH $HOME/go/bin $PATH

# Add directory for fish functions
set -gx PATH $HOME/.config/fish/functions $PATH

# Add autostart to fish
set -gx PATH $HOME/.config/autostart $PATH

# tool aliases
alias hub=hub
alias cat=bat
alias ls=exa

# git aliases
abbr gau git add -u
abbr gbd git branch -d
abbr gbD git branch -D
abbr gcam git commit --amend
abbr gcob git checkout -b
abbr gds git diff --stat
abbr gpl git pull
abbr gstap git stash pop
abbr gstal git stash list
abbr gstad git stash drop

# utility aliases
# search
abbr fft fish_find_text

set -gx bazel_cache $HOME/.ccache
# bazel aliases
abbr bba bazel build --config=adp
abbr bta bazel test --config=adp
abbr bbh bazel build --sandbox_writable_path ~/.ccache --local_test_jobs=1 --define=target_platform=hPAD --cxxopt=-Wno-error=deprecated-declarations --cache_test_results=no --test_output=streamed
abbr bth bazel test --sandbox_writable_path ~/.ccache --local_test_jobs=1 --define=target_platform=hPAD --cxxopt=-Wno-error=deprecated-declarations --cache_test_results=no --test_output=streamed

# theme
set -g theme_color_scheme dracula

#task
