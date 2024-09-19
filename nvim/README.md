# Neovim

## Setup
This setup is a little different than the standard components in this directory.
Because neovim's configuration needs to be in `$HOME/.config/nvim` we can't push
symlinks straight to the home path, like we do with other `*.symlink` files.

Instead, `setup.sh` creates a symlink during the setup phase.

*NOTE:* This is subject to change if I decide I want to alter the `$XDG_CONFIG_HOME`,
I haven't settled on that yet.
