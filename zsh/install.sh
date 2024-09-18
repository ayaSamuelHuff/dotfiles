#!/bin/sh
# 
# oh-my-zsh
#
# This installs OH-MY-ZSH and the p10k theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install nerd font
git clone --depth=1 https://github.com/romkatv/powerlevel10k-media.git $HOME/downloads
cp $HOME/downloads/powerlevel10k-media/*.ttf $HOME/Library/Fonts

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k