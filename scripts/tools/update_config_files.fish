#!/usr/bin/fish

set -l config_path ~/development/config/configuration/

# copy tmux config
cp ~/.tmux.conf $config_path

# copy fish config
cp ~/.config/fish/config.fish $config_path/fish

# copy i3 config
cp ~/.config/i3/config $config_path/i3
